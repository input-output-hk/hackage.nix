{
  "2.0" = {
    sha256 = "51863614f85db4feea00c021e8f8c172d0af87d3cccf841b57318ddfcfb4830a";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-identitystore-2.0-r0-659001cb7acfd41307916dbb29f44c9b7703ba82ce020a6a2be5cc06e9bba03b.nix;
        revNum = 0;
        sha256 = "659001cb7acfd41307916dbb29f44c9b7703ba82ce020a6a2be5cc06e9bba03b";
      };
      r1 = {
        nix = import ../hackage/amazonka-identitystore-2.0-r1-c7e7b1759cd03859676de33401a5f00237f83940f84e7e76f0d35ee7bf9181d7.nix;
        revNum = 1;
        sha256 = "c7e7b1759cd03859676de33401a5f00237f83940f84e7e76f0d35ee7bf9181d7";
      };
      default = "r1";
    };
  };
}