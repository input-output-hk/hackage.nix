{
  "0.1.0" = {
    sha256 = "a107a5d6bdab12d184cf2f780d96fa8d77edc4530efa677a37a9d32a696a781b";
    revisions = {
      r0 = {
        nix = import ../hackage/haskell-src-exts-observe-0.1.0-r0-7b96cc1a828243ebd837671747978710ce968cf75baee09c649657e8d4a88642.nix;
        revNum = 0;
        sha256 = "7b96cc1a828243ebd837671747978710ce968cf75baee09c649657e8d4a88642";
      };
      r1 = {
        nix = import ../hackage/haskell-src-exts-observe-0.1.0-r1-cc19d54903f220a949ee1a6c189bf225ddff3c5bd73c4040492f8149bd278ed8.nix;
        revNum = 1;
        sha256 = "cc19d54903f220a949ee1a6c189bf225ddff3c5bd73c4040492f8149bd278ed8";
      };
      default = "r1";
    };
  };
}