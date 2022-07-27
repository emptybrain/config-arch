local status_ok, session_manager = pcall(require, "session_manager")
if status_ok then
  session_manager.setup({
     autosave_last_session = true,
     autosave_only_in_session = true,

    })
end