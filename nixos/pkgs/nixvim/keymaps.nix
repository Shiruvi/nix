{
programs.nixvim = {
config.globals.mapleader = " ";
config.keymaps = [
  {
    action = "<cmd>Neotree<CR>";
    key = "<leader>o";
    options = {
      silent = true;
      desc = "Toggle Neotree";
    };
    }
  {
    action = "<cmd>w<CR>";
    key = "<leader>w";
    options = {
      silent = true;
      desc = "Save file";
    };
  }
];
};
}
