{
  "2.0" = {
    sha256 = "fee1f97a4bf17448c78bddcb8246621566e459c6d12dea20439aa52bb8473001";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-docdb-elastic-2.0-r0-b7512e694073b2e9fc7edf3d151e83442917c3d67e6b45448822e7139ba6da16.nix;
        revNum = 0;
        sha256 = "b7512e694073b2e9fc7edf3d151e83442917c3d67e6b45448822e7139ba6da16";
      };
      r1 = {
        nix = import ../hackage/amazonka-docdb-elastic-2.0-r1-e46455b5749b1abf87595bfed919f8b20f373c83f95945c9d454b0ca930e9708.nix;
        revNum = 1;
        sha256 = "e46455b5749b1abf87595bfed919f8b20f373c83f95945c9d454b0ca930e9708";
      };
      default = "r1";
    };
  };
}