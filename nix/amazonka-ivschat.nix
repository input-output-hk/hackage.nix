{
  "2.0" = {
    sha256 = "f1830ca97d698588cea54aed2038dd565765ef7523465002e761de3064a4b9b0";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-ivschat-2.0-r0-d68b0684361f0528f0469bdead34c7cde0ef843e440650e187cb9bd09eab897d.nix;
        revNum = 0;
        sha256 = "d68b0684361f0528f0469bdead34c7cde0ef843e440650e187cb9bd09eab897d";
      };
      r1 = {
        nix = import ../hackage/amazonka-ivschat-2.0-r1-d994124cc926fc789472c7de94cf950933b4824f7b68d263c4d96b6a2d5eb378.nix;
        revNum = 1;
        sha256 = "d994124cc926fc789472c7de94cf950933b4824f7b68d263c4d96b6a2d5eb378";
      };
      default = "r1";
    };
  };
}