{
  "0.1" = {
    sha256 = "6b259c916aebd7f1aa46ce7d8c93a955487c08cb094c7b3a2aa78f39ff33ddc2";
    revisions = {
      r0 = {
        nix = import ../hackage/regress-0.1-r0-07386728035205c538ccbaa47c3ec2d401866064954bb76ef78363766cdbde32.nix;
        revNum = 0;
        sha256 = "07386728035205c538ccbaa47c3ec2d401866064954bb76ef78363766cdbde32";
      };
      r1 = {
        nix = import ../hackage/regress-0.1-r1-9913190a8359ac33578b3296b656ad35e8924df1974f3a55f8356791c728b678.nix;
        revNum = 1;
        sha256 = "9913190a8359ac33578b3296b656ad35e8924df1974f3a55f8356791c728b678";
      };
      default = "r1";
    };
  };
  "0.1.1" = {
    sha256 = "d2def3d9276b75dbf685780af1af5e373b1bd2df937eb0bcba15f8c21fb16401";
    revisions = {
      r0 = {
        nix = import ../hackage/regress-0.1.1-r0-8c6b326dc34d6beb36191e6abde98dbead9c1956e25cabf16a9577ce8959e3a2.nix;
        revNum = 0;
        sha256 = "8c6b326dc34d6beb36191e6abde98dbead9c1956e25cabf16a9577ce8959e3a2";
      };
      default = "r0";
    };
  };
}