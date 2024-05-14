{
  "2.0" = {
    sha256 = "545de4f39a1827f8a695e7fe95a196606532a773cc945888c849eb93b2e7267f";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-chime-sdk-messaging-2.0-r0-d28e33bfc491badd8ec0f83fee0a8dea9724d8711ddb9a7d0473636c1cc4961f.nix;
        revNum = 0;
        sha256 = "d28e33bfc491badd8ec0f83fee0a8dea9724d8711ddb9a7d0473636c1cc4961f";
      };
      r1 = {
        nix = import ../hackage/amazonka-chime-sdk-messaging-2.0-r1-f2d57651ba6a5d8308b4eb3a74ebaa3e372b8c1059e8b9002268b19cb1ef82e0.nix;
        revNum = 1;
        sha256 = "f2d57651ba6a5d8308b4eb3a74ebaa3e372b8c1059e8b9002268b19cb1ef82e0";
      };
      default = "r1";
    };
  };
}