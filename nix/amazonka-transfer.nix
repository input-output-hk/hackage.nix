{
  "2.0" = {
    sha256 = "5e44b5bcfb985f8c7ddf0d8e31f86af40d190dfe4421e2b951bf50216b979f94";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-transfer-2.0-r0-ae7dba92e3629362e31d7adf0bd69a464acf38b4766ca7ced79a175ddbe9e444.nix;
        revNum = 0;
        sha256 = "ae7dba92e3629362e31d7adf0bd69a464acf38b4766ca7ced79a175ddbe9e444";
      };
      r1 = {
        nix = import ../hackage/amazonka-transfer-2.0-r1-6a2d93c60f8803b847b6d772cb295c548dbbc543b630b10445d2571ccfe2d085.nix;
        revNum = 1;
        sha256 = "6a2d93c60f8803b847b6d772cb295c548dbbc543b630b10445d2571ccfe2d085";
      };
      default = "r1";
    };
  };
}