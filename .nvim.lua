-- Needs `vim.o.exrc = true` to be automatically loaded
vim.lsp.config('rust_analyzer', {
  -- This line lets me test the fix in my local rust-analyzer build
  -- cmd = { '/Users/mjk/code/rust-analyzer/target/release/rust-analyzer' },
  settings = {
    ['rust-analyzer'] = {
      cargo = {
        features =  { "foo/omg", "bar/lol" },
      },
    }
  }
})
