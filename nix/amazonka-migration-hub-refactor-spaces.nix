{
  "2.0" = {
    sha256 = "d348abdd1808dc2162084ee66c1db5eb98397aa96c28de0a28cd64679ce29082";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-migration-hub-refactor-spaces-2.0-r0-1fa5bfd033e6a2dcdd7de20b6b034ca32fe836fc3479d15469a3e22268caa3a6.nix;
        revNum = 0;
        sha256 = "1fa5bfd033e6a2dcdd7de20b6b034ca32fe836fc3479d15469a3e22268caa3a6";
      };
      r1 = {
        nix = import ../hackage/amazonka-migration-hub-refactor-spaces-2.0-r1-d98a9eb569e763cb80c3101acb3407522701c03d23f6f62cb4ceba3a52b6e793.nix;
        revNum = 1;
        sha256 = "d98a9eb569e763cb80c3101acb3407522701c03d23f6f62cb4ceba3a52b6e793";
      };
      default = "r1";
    };
  };
}