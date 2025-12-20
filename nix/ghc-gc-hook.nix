{
  "0.2.0.0" = {
    sha256 = "429ef84769b139264d184b694bc9eec38409af00cbd4b9226b4f3c9a6b3cfc4c";
    revisions = {
      r0 = {
        nix = import ../hackage/ghc-gc-hook-0.2.0.0-r0-f8832a999f6f3e91f8a82fb3f8f1b11d3bb251cf87e9b8ef728b54647f967c7b.nix;
        revNum = 0;
        sha256 = "f8832a999f6f3e91f8a82fb3f8f1b11d3bb251cf87e9b8ef728b54647f967c7b";
      };
      default = "r0";
    };
  };
  "0.2.1.0" = {
    sha256 = "fd443dbfb0a880a56ccacc5ab8b9fa33f49ec753c54fd6dccb06f3ecf9902835";
    revisions = {
      r0 = {
        nix = import ../hackage/ghc-gc-hook-0.2.1.0-r0-9e590108734ea7f11346af1fbe27572f62dd9c608413c7077ef5c647d34e9360.nix;
        revNum = 0;
        sha256 = "9e590108734ea7f11346af1fbe27572f62dd9c608413c7077ef5c647d34e9360";
      };
      r1 = {
        nix = import ../hackage/ghc-gc-hook-0.2.1.0-r1-5e30b67a02071a7a851549f67849316d2fc9dae279748ef4757831fc45f87ac4.nix;
        revNum = 1;
        sha256 = "5e30b67a02071a7a851549f67849316d2fc9dae279748ef4757831fc45f87ac4";
      };
      r2 = {
        nix = import ../hackage/ghc-gc-hook-0.2.1.0-r2-9a2292de45e223072669ed28ad9dd5c6bf7b7470836868fa68865e4e7ab4d13b.nix;
        revNum = 2;
        sha256 = "9a2292de45e223072669ed28ad9dd5c6bf7b7470836868fa68865e4e7ab4d13b";
      };
      default = "r2";
    };
  };
}