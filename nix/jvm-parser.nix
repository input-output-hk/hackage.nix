{
  "0.2.1" = {
    sha256 = "39eed730f80b4eaa7eab3a6e1f14833e2aea194c7453ac06c5d066af83eb1166";
    revisions = {
      r0 = {
        nix = import ../hackage/jvm-parser-0.2.1-r0-9fff4549b4ea611f69ad8833832417ac386ccfce2bdc4d0898c4744e52c6483f.nix;
        revNum = 0;
        sha256 = "9fff4549b4ea611f69ad8833832417ac386ccfce2bdc4d0898c4744e52c6483f";
        };
      r1 = {
        nix = import ../hackage/jvm-parser-0.2.1-r1-d41e4fe7e7140c935ff838758af58504568f524aeb862f6bdb470eb5771a1f57.nix;
        revNum = 1;
        sha256 = "d41e4fe7e7140c935ff838758af58504568f524aeb862f6bdb470eb5771a1f57";
        };
      default = "r1";
      };
    };
  }