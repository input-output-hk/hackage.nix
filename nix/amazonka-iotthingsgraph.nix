{
  "2.0" = {
    sha256 = "c3ac86758a31cb80e1957f974106c6cbb190f7aa98482e2fe9b83a2ac907e16f";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-iotthingsgraph-2.0-r0-93196ccf0de0fe7bd0fea0645469601b6a351ee5fd2b641511f03d08fd1f958a.nix;
        revNum = 0;
        sha256 = "93196ccf0de0fe7bd0fea0645469601b6a351ee5fd2b641511f03d08fd1f958a";
      };
      r1 = {
        nix = import ../hackage/amazonka-iotthingsgraph-2.0-r1-f0d2427307305ef080c8821eb6d477a98cd655245e5252d4c8334647eae64012.nix;
        revNum = 1;
        sha256 = "f0d2427307305ef080c8821eb6d477a98cd655245e5252d4c8334647eae64012";
      };
      default = "r1";
    };
  };
}