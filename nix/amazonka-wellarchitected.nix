{
  "2.0" = {
    sha256 = "f2c4f8c9be662e2fcf80c3949ac77fc5ce1295a0b73f7879934c103e9a37c90c";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-wellarchitected-2.0-r0-9dd84634807df06a214ee7289a04bcad38abd5fae2c45f685c9bf5a1f32d68e7.nix;
        revNum = 0;
        sha256 = "9dd84634807df06a214ee7289a04bcad38abd5fae2c45f685c9bf5a1f32d68e7";
      };
      r1 = {
        nix = import ../hackage/amazonka-wellarchitected-2.0-r1-d2be60aa65b51646e7ccb34e6aa39d17557ff5f723ebb1c62bd08a655b7d8709.nix;
        revNum = 1;
        sha256 = "d2be60aa65b51646e7ccb34e6aa39d17557ff5f723ebb1c62bd08a655b7d8709";
      };
      default = "r1";
    };
  };
}