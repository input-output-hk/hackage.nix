{
  "0.1.0.0" = {
    sha256 = "94b1b7b482ec7d752391f6a6e3b74de3ccbd8028c39225eccbe995efca56a3cb";
    revisions = {
      r0 = {
        nix = import ../hackage/pcubature-0.1.0.0-r0-26a883e646bd5a344cf6457023439289bfeb37f108b90113daec675cb9d45f07.nix;
        revNum = 0;
        sha256 = "26a883e646bd5a344cf6457023439289bfeb37f108b90113daec675cb9d45f07";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "6f6fa09941e3e5fcd4b5d049b6e23d2d0f11691de97d19e4f3ba529ba7dd2d43";
    revisions = {
      r0 = {
        nix = import ../hackage/pcubature-0.2.0.0-r0-5a2586d7d9591843a72417ea6a01cbc500a653d9c293aebbcd463b715c5303ca.nix;
        revNum = 0;
        sha256 = "5a2586d7d9591843a72417ea6a01cbc500a653d9c293aebbcd463b715c5303ca";
      };
      default = "r0";
    };
  };
}