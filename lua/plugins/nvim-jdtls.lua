local function hadoop_classpath()
  local ok, result = pcall(function()
    return vim.fn.system("hadoop classpath")
  end)

  if not ok or result == nil or result == "" then
    vim.notify("Hadoop classpath not available, skipping Hadoop jars", vim.log.levels.WARN)
    return {}
  end

  -- If the command failed, system() often appends a trailing newline
  if vim.v.shell_error ~= 0 then
    vim.notify("Error running 'hadoop classpath': " .. result, vim.log.levels.ERROR)
    return {}
  end

  return vim.split(result, ":", { trimempty = true })
end

return {
  {
    "mfussenegger/nvim-jdtls",
    opts = {
      settings = {
        java = {
          project = {
            referencedLibraries = hadoop_classpath(),
          },
        },
      },
    },
  },
}
