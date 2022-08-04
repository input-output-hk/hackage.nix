{
  "0.0.1" = {
    sha256 = "cf379730ef04111dcedb0b6b4f92d9e175486f98f3a46a1fdf55fd835757666a";
    revisions = {
      r0 = {
        nix = import ../hackage/haskell-proxy-list-0.0.1-r0-b4d53e4aea4b81826512a859b4a5bb1c12e8dad439f4030bd7423f1e3f1e8679.nix;
        revNum = 0;
        sha256 = "b4d53e4aea4b81826512a859b4a5bb1c12e8dad439f4030bd7423f1e3f1e8679";
        };
      r1 = {
        nix = import ../hackage/haskell-proxy-list-0.0.1-r1-36b1057bb6e8c17e489aa2efda8b02d6f55c9b381bc18280c6e2ee4fd352c201.nix;
        revNum = 1;
        sha256 = "36b1057bb6e8c17e489aa2efda8b02d6f55c9b381bc18280c6e2ee4fd352c201";
        };
      default = "r1";
      };
    };
  }