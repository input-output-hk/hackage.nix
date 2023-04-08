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
  "0.1.1" = {
    sha256 = "7060bf6dc8fd0132a42e1f285908eaa67924c36b33ce08d847cdf0687ace306b";
    revisions = {
      r0 = {
        nix = import ../hackage/falsify-0.1.1-r0-49c4d6acba99a2647b18502ff0265fb98570b77d7893c355ede4f2db17295cc1.nix;
        revNum = 0;
        sha256 = "49c4d6acba99a2647b18502ff0265fb98570b77d7893c355ede4f2db17295cc1";
        };
      default = "r0";
      };
    };
  }