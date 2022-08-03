{
  "0.1.0" = {
    sha256 = "9ac593fb5bc43841342ba26f1133af4a052d70fe8ce681ecd6e0728fe874314d";
    revisions = {
      r0 = {
        nix = import ../hackage/merkle-tree-0.1.0-r0-e152184baf78ec278ff92667d555a7e5f8ecbe72e1a2091646fb0e16dc808d32.nix;
        revNum = 0;
        sha256 = "e152184baf78ec278ff92667d555a7e5f8ecbe72e1a2091646fb0e16dc808d32";
        };
      r1 = {
        nix = import ../hackage/merkle-tree-0.1.0-r1-bf99897ae89289f95cc5ed0ff648c99aa6b3d1fdfba37ba2b0d3ff8ad3c97ac5.nix;
        revNum = 1;
        sha256 = "bf99897ae89289f95cc5ed0ff648c99aa6b3d1fdfba37ba2b0d3ff8ad3c97ac5";
        };
      default = "r1";
      };
    };
  "0.1.1" = {
    sha256 = "215a62476230374b8bbf2f7a0a3e88345a18cf9c6f672ef7d422c3f6bd5ba2aa";
    revisions = {
      r0 = {
        nix = import ../hackage/merkle-tree-0.1.1-r0-a5b80e4a88161a76582dda3d3da610f3d6ab2601e33939677f33ad179016722a.nix;
        revNum = 0;
        sha256 = "a5b80e4a88161a76582dda3d3da610f3d6ab2601e33939677f33ad179016722a";
        };
      default = "r0";
      };
    };
  }