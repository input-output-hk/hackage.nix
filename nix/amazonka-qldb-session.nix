{
  "2.0" = {
    sha256 = "afb83e59b3a67d29b940ff4095e2944d55560daa67fc877f42f5879f425b4b43";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-qldb-session-2.0-r0-e5ce0b39ff8a41895907d9548394c1f8f56a44133f324c0e7b54bf7f06f5e0f7.nix;
        revNum = 0;
        sha256 = "e5ce0b39ff8a41895907d9548394c1f8f56a44133f324c0e7b54bf7f06f5e0f7";
      };
      r1 = {
        nix = import ../hackage/amazonka-qldb-session-2.0-r1-f574bea2eca65840ac5d2af09a02ad4e7fbb54da37b8fc39c451ac105ac93faa.nix;
        revNum = 1;
        sha256 = "f574bea2eca65840ac5d2af09a02ad4e7fbb54da37b8fc39c451ac105ac93faa";
      };
      default = "r1";
    };
  };
}