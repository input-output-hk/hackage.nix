{
  "2.0" = {
    sha256 = "23d2dac16f872a916da1dbac4b3daa0235311096a4576db329ef4f9a36ba717a";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-robomaker-2.0-r0-f6bb159ad89fb0f8fa196471ca410a6093254a6e8f48e4dae802321fecfd6674.nix;
        revNum = 0;
        sha256 = "f6bb159ad89fb0f8fa196471ca410a6093254a6e8f48e4dae802321fecfd6674";
      };
      r1 = {
        nix = import ../hackage/amazonka-robomaker-2.0-r1-cf03bf5b5dee6a5ae3ebf1e0179b2ba0929e87670f91d8fd5ae9ecea436d8660.nix;
        revNum = 1;
        sha256 = "cf03bf5b5dee6a5ae3ebf1e0179b2ba0929e87670f91d8fd5ae9ecea436d8660";
      };
      default = "r1";
    };
  };
}