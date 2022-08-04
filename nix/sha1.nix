{
  "0.1.0.0" = {
    sha256 = "8d451ef9208abe1a285657bb9268bb68951e3e261e83587928b56ba8754141c2";
    revisions = {
      r0 = {
        nix = import ../hackage/sha1-0.1.0.0-r0-b63b432f51db8e906d7f4d5a68dca08a0d532136a16c5b4f45154c2126679a7a.nix;
        revNum = 0;
        sha256 = "b63b432f51db8e906d7f4d5a68dca08a0d532136a16c5b4f45154c2126679a7a";
        };
      r1 = {
        nix = import ../hackage/sha1-0.1.0.0-r1-7ac04639db7eb2089da4bbf2ffe8478d6400a5170b6a3b268f3513836c042ec1.nix;
        revNum = 1;
        sha256 = "7ac04639db7eb2089da4bbf2ffe8478d6400a5170b6a3b268f3513836c042ec1";
        };
      default = "r1";
      };
    };
  "0.1.0.1" = {
    sha256 = "95dd4c793ab05396ddcb99c95925476644d64872aff22a26ceaa503b1f273453";
    revisions = {
      r0 = {
        nix = import ../hackage/sha1-0.1.0.1-r0-edd06f3fc34dd4090c20c29320d4c2e5cf4f4d3436e3e7bfcdec12d5ab24f57a.nix;
        revNum = 0;
        sha256 = "edd06f3fc34dd4090c20c29320d4c2e5cf4f4d3436e3e7bfcdec12d5ab24f57a";
        };
      default = "r0";
      };
    };
  "0.1.0.2" = {
    sha256 = "8e52d295a24ef5d666571a597bb6723bcdafbef2e19307f3c176937acd0b5e92";
    revisions = {
      r0 = {
        nix = import ../hackage/sha1-0.1.0.2-r0-6435ec8d9d81cada86d76edee982e079438254cc3eca9584968922ae89a91fe5.nix;
        revNum = 0;
        sha256 = "6435ec8d9d81cada86d76edee982e079438254cc3eca9584968922ae89a91fe5";
        };
      default = "r0";
      };
    };
  }