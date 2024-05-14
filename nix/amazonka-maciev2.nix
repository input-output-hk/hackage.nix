{
  "2.0" = {
    sha256 = "7d2f7f66fcec2ff2b581a15d68b0d6c1c4d707edf6ffb0f9b23b5e171d0aa6fa";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-maciev2-2.0-r0-a23c9ab83db0959830368ce2c84421f39640079428d927ca325a14176fd6a5b9.nix;
        revNum = 0;
        sha256 = "a23c9ab83db0959830368ce2c84421f39640079428d927ca325a14176fd6a5b9";
      };
      r1 = {
        nix = import ../hackage/amazonka-maciev2-2.0-r1-01406a980c0e3ae432c4b4208acd7ab65ff44927d14fc85bb50a527ea03ecbd9.nix;
        revNum = 1;
        sha256 = "01406a980c0e3ae432c4b4208acd7ab65ff44927d14fc85bb50a527ea03ecbd9";
      };
      default = "r1";
    };
  };
}