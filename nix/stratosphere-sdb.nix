{
  "1.0.0" = {
    sha256 = "f981e7cbd05d08dc68551a40ffb27d309e23a62d0b12f5825218159d3db4637e";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-sdb-1.0.0-r0-91a2388ac36d6a53e86462faa1ffa01ec0bc602a484cd3e825216494319a0e10.nix;
        revNum = 0;
        sha256 = "91a2388ac36d6a53e86462faa1ffa01ec0bc602a484cd3e825216494319a0e10";
      };
      default = "r0";
    };
  };
  "1.0.1" = {
    sha256 = "70f3e52a1fe909160e8a6f2359e30df50daf728daf2df69a8dc3e3aaf8509856";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-sdb-1.0.1-r0-410b744e9262814da306f19ae9b976284ed51448514afc5b3158207264ae6eb3.nix;
        revNum = 0;
        sha256 = "410b744e9262814da306f19ae9b976284ed51448514afc5b3158207264ae6eb3";
      };
      default = "r0";
    };
  };
}