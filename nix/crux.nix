{
  "0.7" = {
    sha256 = "b1202f2723c018ef34a19c9eed7aa936ee726ac25c37f738284a8851a879732d";
    revisions = {
      r0 = {
        nix = import ../hackage/crux-0.7-r0-754ce14d45d3bf7b83a067591757b8d612f3f39b658c1e08a7dcc819df78e443.nix;
        revNum = 0;
        sha256 = "754ce14d45d3bf7b83a067591757b8d612f3f39b658c1e08a7dcc819df78e443";
      };
      default = "r0";
    };
  };
  "0.7.1" = {
    sha256 = "bebdce0845ecdc3d1fb594aac98e0870992cade1b71db9f93d80ceb173a2b650";
    revisions = {
      r0 = {
        nix = import ../hackage/crux-0.7.1-r0-de2334352d23bb4d6b7fe723cab35443bb0c6246b27e25d79b4959fb8a5a79a1.nix;
        revNum = 0;
        sha256 = "de2334352d23bb4d6b7fe723cab35443bb0c6246b27e25d79b4959fb8a5a79a1";
      };
      default = "r0";
    };
  };
}