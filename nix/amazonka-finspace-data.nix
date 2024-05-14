{
  "2.0" = {
    sha256 = "784ec8dfda4fc43e5beddfff863f188373cb3af929f436cb949d01757f06693b";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-finspace-data-2.0-r0-cec39033cd24c00f3bae3239bc7c95a1a9a9be94c7f4d5c78761849c14cf3a67.nix;
        revNum = 0;
        sha256 = "cec39033cd24c00f3bae3239bc7c95a1a9a9be94c7f4d5c78761849c14cf3a67";
      };
      r1 = {
        nix = import ../hackage/amazonka-finspace-data-2.0-r1-146492428fe7d719a6879a90ce1e82f94cb680d54a6397348cf8f15a7626a988.nix;
        revNum = 1;
        sha256 = "146492428fe7d719a6879a90ce1e82f94cb680d54a6397348cf8f15a7626a988";
      };
      default = "r1";
    };
  };
}