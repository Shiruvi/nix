{
programs.nixvim = {
config.globals.mapleader = " ";
keymaps = [
{
  {
    action = "<cmd>Neotree<CR>";
    key = "<leader>e";
    options = {
      silent = true;
      desc = "Show Neotree"
    };
  {
    action = "<cmd>Neotree toggle<CR>";
    key = "<leader>o";
    options = {
      silent = true;
      desc = "Toggle Neotree"
    };

  }
}
];
};
}
