{
  "0.1" = {
    sha256 = "64f74819b808e5251ae261b0c77e8b704461f1933b965f79e4b07eea5048feae";
    revisions = {
      r0 = {
        nix = import ../hackage/debruijn-0.1-r0-2a5f6c05f174b7356ddf40436936c3bf23fa2cd13e5569c6b2c0925a042a2e36.nix;
        revNum = 0;
        sha256 = "2a5f6c05f174b7356ddf40436936c3bf23fa2cd13e5569c6b2c0925a042a2e36";
      };
      default = "r0";
    };
  };
  "0.2" = {
    sha256 = "e2dab20fc880a1b6ee1e0d8fa7f74e1771b51f13bbec0765f3bf182a2be54bc8";
    revisions = {
      r0 = {
        nix = import ../hackage/debruijn-0.2-r0-d25acc73e743a3199c49971b33e9ab7cb804a1cb9f8ae22c9cde0ab757b898d9.nix;
        revNum = 0;
        sha256 = "d25acc73e743a3199c49971b33e9ab7cb804a1cb9f8ae22c9cde0ab757b898d9";
      };
      default = "r0";
    };
  };
}