{
  "2.0" = {
    sha256 = "2e0ae48e01ae9acbde0321d96e09e2cdbe26456dda9a0702ac74eff89f9120fb";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-iot-roborunner-2.0-r0-10fb212c9e5a6e347b7f30839411cb30894a306573602b81a16004ffc3828c7e.nix;
        revNum = 0;
        sha256 = "10fb212c9e5a6e347b7f30839411cb30894a306573602b81a16004ffc3828c7e";
      };
      r1 = {
        nix = import ../hackage/amazonka-iot-roborunner-2.0-r1-d3308f5a480bcb317c48e093c8456f4e26aff1299a9dff050973173d275b8f99.nix;
        revNum = 1;
        sha256 = "d3308f5a480bcb317c48e093c8456f4e26aff1299a9dff050973173d275b8f99";
      };
      default = "r1";
    };
  };
}