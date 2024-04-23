{
  "0.1.0.0" = {
    sha256 = "84b9b63803682b2d4f75481941eb7a7a910ff38ea98006dbef73334dc8a71c5c";
    revisions = {
      r0 = {
        nix = import ../hackage/multicurryable-0.1.0.0-r0-e2124209672f26d84fec8dfc9a00e86287e818fdcfef707fd84888e8d21945b2.nix;
        revNum = 0;
        sha256 = "e2124209672f26d84fec8dfc9a00e86287e818fdcfef707fd84888e8d21945b2";
      };
      r1 = {
        nix = import ../hackage/multicurryable-0.1.0.0-r1-a85e73e01b547e416763c5f0992e93a4bacf8ea71cae1aecd2896eb0c5492f60.nix;
        revNum = 1;
        sha256 = "a85e73e01b547e416763c5f0992e93a4bacf8ea71cae1aecd2896eb0c5492f60";
      };
      default = "r1";
    };
  };
  "0.1.0.1" = {
    sha256 = "c697e8033bc1b5204aa0109d85ea939082c53029586e95c64d8d9946f5bce5b4";
    revisions = {
      r0 = {
        nix = import ../hackage/multicurryable-0.1.0.1-r0-d3ce100eacb310f5bf7b79a5e8ffa4bd86f2d90465bb9c967597cf4abbd5d2a4.nix;
        revNum = 0;
        sha256 = "d3ce100eacb310f5bf7b79a5e8ffa4bd86f2d90465bb9c967597cf4abbd5d2a4";
      };
      r1 = {
        nix = import ../hackage/multicurryable-0.1.0.1-r1-2a694abb27740582fcdbbee4430459ee7873413e85bfe54707c857fc830554f9.nix;
        revNum = 1;
        sha256 = "2a694abb27740582fcdbbee4430459ee7873413e85bfe54707c857fc830554f9";
      };
      default = "r1";
    };
  };
  "0.1.1.0" = {
    sha256 = "64faa79db5c52b305b2fb256ba0a459166e4026bfd8f815fcf0b32695dfe516c";
    revisions = {
      r0 = {
        nix = import ../hackage/multicurryable-0.1.1.0-r0-5633f812c259ac6e78f98ef04827bf96ae41d116580c729823978760c640648e.nix;
        revNum = 0;
        sha256 = "5633f812c259ac6e78f98ef04827bf96ae41d116580c729823978760c640648e";
      };
      default = "r0";
    };
  };
}