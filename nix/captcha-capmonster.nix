{
  "0.1.0.0" = {
    sha256 = "74ff9634a8bbfc4dfa921100e29e58e8ca5d02630e30048812293a35176f475f";
    revisions = {
      r0 = {
        nix = import ../hackage/captcha-capmonster-0.1.0.0-r0-8c02fa73d945ba1a9cf941f3d579056791e2587dd0c6a7d1d5cb582a971a92bd.nix;
        revNum = 0;
        sha256 = "8c02fa73d945ba1a9cf941f3d579056791e2587dd0c6a7d1d5cb582a971a92bd";
        };
      r1 = {
        nix = import ../hackage/captcha-capmonster-0.1.0.0-r1-ce6d7c9520052b0a8708824348886e89fb37fca0a20891c880c40226cc11b491.nix;
        revNum = 1;
        sha256 = "ce6d7c9520052b0a8708824348886e89fb37fca0a20891c880c40226cc11b491";
        };
      default = "r1";
      };
    };
  }