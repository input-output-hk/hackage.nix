{
  "0.1" = {
    sha256 = "4ad88315b8ce14bad03960e679fbaac81e6101aec055c20fb8c3971b613a924e";
    revisions = {
      r0 = {
        nix = import ../hackage/learn-0.1-r0-89819da06bd97750e7aba39d70eb9d3738a41cca12951cb8527cfe2328c0e6eb.nix;
        revNum = 0;
        sha256 = "89819da06bd97750e7aba39d70eb9d3738a41cca12951cb8527cfe2328c0e6eb";
      };
      default = "r0";
    };
  };
  "0.1.1" = {
    sha256 = "f26e4aa36e63755620aefcc945977ddf6c0a0acce562a93b901daf572fb159c4";
    revisions = {
      r0 = {
        nix = import ../hackage/learn-0.1.1-r0-0b74bc31b13146d5bbc70fbc34c7b3a7be91345e272dd5c433176fcb74f82489.nix;
        revNum = 0;
        sha256 = "0b74bc31b13146d5bbc70fbc34c7b3a7be91345e272dd5c433176fcb74f82489";
      };
      default = "r0";
    };
  };
}