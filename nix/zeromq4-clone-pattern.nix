{
  "0.1.0.0" = {
    sha256 = "cfd7dff743cd86c5caa0a9483cf491c24a0736569961ad769515cba1d31decb3";
    revisions = {
      r0 = {
        nix = import ../hackage/zeromq4-clone-pattern-0.1.0.0-r0-a106ca64ef3b8a1049f5f7f8ee7e6bbf7828d9dda7d9a5e19386c2085d0709f0.nix;
        revNum = 0;
        sha256 = "a106ca64ef3b8a1049f5f7f8ee7e6bbf7828d9dda7d9a5e19386c2085d0709f0";
        };
      r1 = {
        nix = import ../hackage/zeromq4-clone-pattern-0.1.0.0-r1-4a51efb2fa94f3cf61515f352ec1c580efb54d852649b5875cb4186af1cc5007.nix;
        revNum = 1;
        sha256 = "4a51efb2fa94f3cf61515f352ec1c580efb54d852649b5875cb4186af1cc5007";
        };
      default = "r1";
      };
    };
  }