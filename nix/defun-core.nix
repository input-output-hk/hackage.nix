{
  "0.1" = {
    sha256 = "0f808e6b6b801369df2f2b5ed0b6f2ee9e011d0910149443e860ceb9bb56b3ef";
    revisions = {
      r0 = {
        nix = import ../hackage/defun-core-0.1-r0-5c5a7e5978f5c51ac5cb590ba5775dc4566321f9b1d68bc9d0fca220dc247bfb.nix;
        revNum = 0;
        sha256 = "5c5a7e5978f5c51ac5cb590ba5775dc4566321f9b1d68bc9d0fca220dc247bfb";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "0210bc8f2f51ad916b40b5dc90d043e8304d102333d4405f981d2e21d416c07b";
    revisions = {
      r0 = {
        nix = import ../hackage/defun-core-0.1.0.1-r0-38557b4a7e95d5e2ee5e9bf8edf7f65d7d82d77e21121741acefc7ea6376ab8f.nix;
        revNum = 0;
        sha256 = "38557b4a7e95d5e2ee5e9bf8edf7f65d7d82d77e21121741acefc7ea6376ab8f";
      };
      r1 = {
        nix = import ../hackage/defun-core-0.1.0.1-r1-b820fac4008ba87e800d8ffdaf774c3a231da0bbfdc60c42ea359bd9c810b97b.nix;
        revNum = 1;
        sha256 = "b820fac4008ba87e800d8ffdaf774c3a231da0bbfdc60c42ea359bd9c810b97b";
      };
      default = "r1";
    };
  };
}