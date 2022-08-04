{
  "0.1.0" = {
    sha256 = "5f1fcaf951a7828bbac3aef6ff8c540b187b0117f51b49428d018712eabd05cf";
    revisions = {
      r0 = {
        nix = import ../hackage/oblivious-transfer-0.1.0-r0-0f9d1815212be9ee569a521b5b12ea8e2cb9e49b4e13f513e2a1df97aa41886b.nix;
        revNum = 0;
        sha256 = "0f9d1815212be9ee569a521b5b12ea8e2cb9e49b4e13f513e2a1df97aa41886b";
        };
      r1 = {
        nix = import ../hackage/oblivious-transfer-0.1.0-r1-d3276202e07bd1eef6c7b19d6f3b305d739ef270a081515e8e9f24360bd132ed.nix;
        revNum = 1;
        sha256 = "d3276202e07bd1eef6c7b19d6f3b305d739ef270a081515e8e9f24360bd132ed";
        };
      default = "r1";
      };
    };
  }