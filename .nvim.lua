vim.lsp.config('rust_analyzer', {
  cmd = { "rustup", "run", "nightly-2025-07-20", "rust-analyzer" },
  cmd_env = {
    RA_LOG = "rust_analyzer=debug",
    RA_LOG_FILE = "/tmp/ra.log",
  },
  settings = {
    ['rust-analyzer'] = {
      -- enable clippy on save
      checkOnSave = true,
      check = {
        command = "clippy",
      },
      procMacro = { enable = true },
      diagnostics = {
        disabled = {"inactive-code"},
      },
      cargo = {
        targetDir = "target/rust-analyzer",
        allTargets = false,
        features =  { "foo/omg", "bar/lol" },
        noDefaultFeatures = true,
        extraEnv = { LOL_OMG_WTF = "AHHHHH" },
      },
    }
  }
})
