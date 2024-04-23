{
  "0.1.0.0" = {
    sha256 = "9b2a7921173294b6aa9227bee6445deed5487470df7f0215c9293a32e2754824";
    revisions = {
      r0 = {
        nix = import ../hackage/wshterm-0.1.0.0-r0-26a3ce4a045f674608a7ae9962bf6e0ee6e1b19bbf7a11ac192d454be5cf30fa.nix;
        revNum = 0;
        sha256 = "26a3ce4a045f674608a7ae9962bf6e0ee6e1b19bbf7a11ac192d454be5cf30fa";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "180f61a555267078ac47289afa24bea18159001d3c8cbcebf66608492262fd25";
    revisions = {
      r0 = {
        nix = import ../hackage/wshterm-0.1.0.1-r0-2a67b180362282c34e08a03dfbb9260f9ce64de80fddf4719935bb8e11a24205.nix;
        revNum = 0;
        sha256 = "2a67b180362282c34e08a03dfbb9260f9ce64de80fddf4719935bb8e11a24205";
      };
      r1 = {
        nix = import ../hackage/wshterm-0.1.0.1-r1-b0724b272d438ce944cca758ad01317a00bdcca13bc8556861156d5b81135c38.nix;
        revNum = 1;
        sha256 = "b0724b272d438ce944cca758ad01317a00bdcca13bc8556861156d5b81135c38";
      };
      default = "r1";
    };
  };
}