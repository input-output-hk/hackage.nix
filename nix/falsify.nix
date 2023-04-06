{
  "0.1.0" = {
    sha256 = "86bc083d4618dfbac5a40af2f8564ef2478e99a3f135201e26ee978f25f59f3d";
    revisions = {
      r0 = {
        nix = import ../hackage/falsify-0.1.0-r0-db7554f808e3eda6a1eeb2ab619f7339ead25906184e40e566000de41fbe7c78.nix;
        revNum = 0;
        sha256 = "db7554f808e3eda6a1eeb2ab619f7339ead25906184e40e566000de41fbe7c78";
        };
      r1 = {
        nix = import ../hackage/falsify-0.1.0-r1-d54fd9c420ee048b073e3641f9880eee4dac62e47bf88240d1eeff1977718a9a.nix;
        revNum = 1;
        sha256 = "d54fd9c420ee048b073e3641f9880eee4dac62e47bf88240d1eeff1977718a9a";
        };
      default = "r1";
      };
    };
  }