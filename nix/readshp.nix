{
  "0.1.0.0" = {
    sha256 = "354f8e8e649110d0da687dcadefe7145f03a7a9b2c0a752023fa9c9a55f6bc36";
    revisions = {
      r0 = {
        nix = import ../hackage/readshp-0.1.0.0-r0-7a095507c4697f8ff015e1a296679dde96fce8654aecc15278be10755bea9c1d.nix;
        revNum = 0;
        sha256 = "7a095507c4697f8ff015e1a296679dde96fce8654aecc15278be10755bea9c1d";
        };
      r1 = {
        nix = import ../hackage/readshp-0.1.0.0-r1-c8fa843aeed4743a1f664a42097730dd4d5c8f8f7de06f8af26bdf09814efd57.nix;
        revNum = 1;
        sha256 = "c8fa843aeed4743a1f664a42097730dd4d5c8f8f7de06f8af26bdf09814efd57";
        };
      default = "r1";
      };
    };
  }