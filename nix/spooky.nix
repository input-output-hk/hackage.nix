{
  "0.1.0.0" = {
    sha256 = "69f4126f4a938445dd8092caf81f56df85bae518cb0fa2d6beaf9e76e4da3030";
    revisions = {
      r0 = {
        nix = import ../hackage/spooky-0.1.0.0-r0-64844b2f7a4436c3af61d4a1bcbfe21ee296c82c62240e518e61c05393ac68a9.nix;
        revNum = 0;
        sha256 = "64844b2f7a4436c3af61d4a1bcbfe21ee296c82c62240e518e61c05393ac68a9";
      };
      r1 = {
        nix = import ../hackage/spooky-0.1.0.0-r1-cfb2e8d844df3ec1fbbe26f8496b1dd6c02609ff38dc5c54586e1c47ecd23249.nix;
        revNum = 1;
        sha256 = "cfb2e8d844df3ec1fbbe26f8496b1dd6c02609ff38dc5c54586e1c47ecd23249";
      };
      default = "r1";
    };
  };
}