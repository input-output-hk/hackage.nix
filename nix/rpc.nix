{
  "0.0.0" = {
    sha256 = "25e091c1bef92d24b8ddd807cb968677b59b066d9a9874b97b6811962ef469c2";
    revisions = {
      r0 = {
        nix = import ../hackage/rpc-0.0.0-r0-24a634a05e2de11872f738940f150ac5dd9248005ac8b1b7e728a75f55f7c801.nix;
        revNum = 0;
        sha256 = "24a634a05e2de11872f738940f150ac5dd9248005ac8b1b7e728a75f55f7c801";
      };
      default = "r0";
    };
  };
  "0.0.1" = {
    sha256 = "49122d66324737a789876ef60a971fd414f4c3adf77904f85701bb69eb15892f";
    revisions = {
      r0 = {
        nix = import ../hackage/rpc-0.0.1-r0-ff9fc208ca077bb8d8e7ed5c1c1e46479c9de7d61b9ea3f5b1e286fd7d86430c.nix;
        revNum = 0;
        sha256 = "ff9fc208ca077bb8d8e7ed5c1c1e46479c9de7d61b9ea3f5b1e286fd7d86430c";
      };
      default = "r0";
    };
  };
}