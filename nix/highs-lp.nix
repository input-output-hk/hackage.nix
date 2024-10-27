{
  "0.0" = {
    sha256 = "198d14193680d7ec9712a96264f901fb863b671a71b494fab3c4bb1b30a5a9bb";
    revisions = {
      r0 = {
        nix = import ../hackage/highs-lp-0.0-r0-5fe380cf45b4678274274a55578aaaebfc38fc93d74a3941b4aececbdd46b583.nix;
        revNum = 0;
        sha256 = "5fe380cf45b4678274274a55578aaaebfc38fc93d74a3941b4aececbdd46b583";
      };
      r1 = {
        nix = import ../hackage/highs-lp-0.0-r1-3bcd4627b63dea6cc2ce4ee551535b250f419b5477049e860f3efa45dc0a8f7d.nix;
        revNum = 1;
        sha256 = "3bcd4627b63dea6cc2ce4ee551535b250f419b5477049e860f3efa45dc0a8f7d";
      };
      default = "r1";
    };
  };
}