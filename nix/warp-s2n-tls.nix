{
  "0.1.0.0" = {
    sha256 = "51350cb11be3c5218cdce07dbd498b9222a3258acae0d506d1e2ed41953bd57c";
    revisions = {
      r0 = {
        nix = import ../hackage/warp-s2n-tls-0.1.0.0-r0-ee94fc24d0077246a087c672deda1c399ac62c89fe20514d162a415f986c0802.nix;
        revNum = 0;
        sha256 = "ee94fc24d0077246a087c672deda1c399ac62c89fe20514d162a415f986c0802";
      };
      default = "r0";
    };
  };
  "0.1.1.0" = {
    sha256 = "cbbc0e422b665d32e84477e141996a268fd8462c09c1e880dd20319e6b17b3fe";
    revisions = {
      r0 = {
        nix = import ../hackage/warp-s2n-tls-0.1.1.0-r0-b1dcc21818e06e119867c376ce48b146104849146693ef3189a12c984382eca3.nix;
        revNum = 0;
        sha256 = "b1dcc21818e06e119867c376ce48b146104849146693ef3189a12c984382eca3";
      };
      default = "r0";
    };
  };
}