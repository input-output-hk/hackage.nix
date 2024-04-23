{
  "0.1.0.0" = {
    sha256 = "87db85bec2a2ffef81a238bc89ae43e929b88dbfcd3f80d571a15147688351a7";
    revisions = {
      r0 = {
        nix = import ../hackage/chr-core-0.1.0.0-r0-c569cc649dbd91c43968f8e21d3df21f8ae128062cf7706abedbf3f05aeb6bb0.nix;
        revNum = 0;
        sha256 = "c569cc649dbd91c43968f8e21d3df21f8ae128062cf7706abedbf3f05aeb6bb0";
      };
      r1 = {
        nix = import ../hackage/chr-core-0.1.0.0-r1-f9bb997824dd978453dee3272a81df719a900a056e4240eba43717a1407301f5.nix;
        revNum = 1;
        sha256 = "f9bb997824dd978453dee3272a81df719a900a056e4240eba43717a1407301f5";
      };
      default = "r1";
    };
  };
  "0.1.0.1" = {
    sha256 = "4ace498af6f78e8fdddf4c3d14f2bd47eaa3e934bb975538f5c1ff31134c8c1e";
    revisions = {
      r0 = {
        nix = import ../hackage/chr-core-0.1.0.1-r0-229524052a0679a5894f4a05d5bf9285b262004a29581df0c3ca9f29e4750863.nix;
        revNum = 0;
        sha256 = "229524052a0679a5894f4a05d5bf9285b262004a29581df0c3ca9f29e4750863";
      };
      default = "r0";
    };
  };
  "0.1.0.4" = {
    sha256 = "a95590c4ac4f3cbe9c91c370234b3d0a41da462adb50460d58a30f8e41ab084e";
    revisions = {
      r0 = {
        nix = import ../hackage/chr-core-0.1.0.4-r0-93a21953fe6bf4bccd87ffb56fe19f6add85e9d0da161bba639725f33b40df84.nix;
        revNum = 0;
        sha256 = "93a21953fe6bf4bccd87ffb56fe19f6add85e9d0da161bba639725f33b40df84";
      };
      default = "r0";
    };
  };
  "0.1.1.0" = {
    sha256 = "8af06b127ca76e41728bf5a59c8880effe8b4acdfd5356c029455fce2f90bc2f";
    revisions = {
      r0 = {
        nix = import ../hackage/chr-core-0.1.1.0-r0-7e10d30d5876bf950cf914b322961b472abdb7357cf9f1c8db89af2aa9a8f752.nix;
        revNum = 0;
        sha256 = "7e10d30d5876bf950cf914b322961b472abdb7357cf9f1c8db89af2aa9a8f752";
      };
      default = "r0";
    };
  };
}