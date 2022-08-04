{
  "0.2" = {
    sha256 = "48b65ada82fa8ac73216437f2ffb17606b8b31ca3a6264a11f705b2184400f7d";
    revisions = {
      r0 = {
        nix = import ../hackage/simplesmtpclient-0.2-r0-d4800b3c485af9ff888d458232c8cf5a028ba9b1702b17ea86042b019b3b2ae5.nix;
        revNum = 0;
        sha256 = "d4800b3c485af9ff888d458232c8cf5a028ba9b1702b17ea86042b019b3b2ae5";
        };
      r1 = {
        nix = import ../hackage/simplesmtpclient-0.2-r1-e6021c7bbf5e50c15433dca491f4618483229203c810a7b71e7c42094e13ad25.nix;
        revNum = 1;
        sha256 = "e6021c7bbf5e50c15433dca491f4618483229203c810a7b71e7c42094e13ad25";
        };
      default = "r1";
      };
    };
  }