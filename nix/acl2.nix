{
  "0.0.0" = {
    sha256 = "836bb8cee99d002ca32ff72869e1949027b003e747fdb3d0ebbbb9ec544ac424";
    revisions = {
      r0 = {
        nix = import ../hackage/acl2-0.0.0-r0-5ec170f9766085ab5b8aae28b950cd99ab2ae0cbee96d88168e166efa87d7e8b.nix;
        revNum = 0;
        sha256 = "5ec170f9766085ab5b8aae28b950cd99ab2ae0cbee96d88168e166efa87d7e8b";
      };
      default = "r0";
    };
  };
  "0.0.1" = {
    sha256 = "8f11af048dd74ef814dfcf20052ac359713650eb272bd841ca71d1317bd3942f";
    revisions = {
      r0 = {
        nix = import ../hackage/acl2-0.0.1-r0-a7d9adc1d6bfe573becb4d5e28478669064fb1d08df5ed02f3422b44c6daf057.nix;
        revNum = 0;
        sha256 = "a7d9adc1d6bfe573becb4d5e28478669064fb1d08df5ed02f3422b44c6daf057";
      };
      default = "r0";
    };
  };
}