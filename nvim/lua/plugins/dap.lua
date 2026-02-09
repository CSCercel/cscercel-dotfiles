return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "nvim-neotest/nvim-nio",
      "theHamsta/nvim-dap-virtual-text",
      "mfussenegger/nvim-dap-python",
      "leoluz/nvim-dap-go",
    },

    config = function()
      local dap = require("dap")
      local dapui = require("dapui")

      dapui.setup()
      require("nvim-dap-virtual-text").setup()

      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end

      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end

      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end

      local function get_python_path()
        local venv = vim.fn.finddir(".venv", ".;")
        if venv ~= "" then
          return venv .. "/bin/python"
        end

        return vim.fn.exepath("python3") or "python"
      end

      require("dap-python").setup(get_python_path())
      require("dap-go").setup()

      vim.keymap.set("n", "<F5>", dap.continue)
      vim.keymap.set("n", "<F10>", dap.step_over)
      vim.keymap.set("n", "<F11>", dap.step_into)
      vim.keymap.set("n", "<F12>", dap.step_out)

      vim.keymap.set("n", "<Leader>b", dap.toggle_breakpoint)
      vim.keymap.set("n", "<Leader>B", function()
        dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
      end)

      vim.keymap.set("n", "<Leader>dr", dap.repl.open)
      vim.keymap.set("n", "<Leader>dl", dap.run_last)
    end,
  },
}
