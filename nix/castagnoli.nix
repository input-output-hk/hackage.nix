{
  "0.1.0.0" = {
    sha256 = "d2a108cb27d87aa22ba3a693b33706d300d2fdb9801f05eb2fbd520028b7bf82";
    revisions = {
      r0 = {
        nix = import ../hackage/castagnoli-0.1.0.0-r0-79b4b57290f3f09f77abf95b7d93d130dfbd73015c1f69cc0f24a449b159c327.nix;
        revNum = 0;
        sha256 = "79b4b57290f3f09f77abf95b7d93d130dfbd73015c1f69cc0f24a449b159c327";
      };
      r1 = {
        nix = import ../hackage/castagnoli-0.1.0.0-r1-24dc069fd4ebbed93aff844cfbbac18603e8051542727cb6a801b9452762e0fa.nix;
        revNum = 1;
        sha256 = "24dc069fd4ebbed93aff844cfbbac18603e8051542727cb6a801b9452762e0fa";
      };
      default = "r1";
    };
  };
  "0.2.0.0" = {
    sha256 = "df623d39ccd2180b1698685ea842a110d01b56cf8ef51dc7a93a1fac40a6f6cc";
    revisions = {
      r0 = {
        nix = import ../hackage/castagnoli-0.2.0.0-r0-349d4e0b1213330c55a13cd7d2ce5d5309a0e710e5ac58ba6180a0423ba9e0d9.nix;
        revNum = 0;
        sha256 = "349d4e0b1213330c55a13cd7d2ce5d5309a0e710e5ac58ba6180a0423ba9e0d9";
      };
      r1 = {
        nix = import ../hackage/castagnoli-0.2.0.0-r1-8b8de67d24b3d5a898c3e37a50bad4ab301fdb208cdf4ade0ec1a51c9f24d75c.nix;
        revNum = 1;
        sha256 = "8b8de67d24b3d5a898c3e37a50bad4ab301fdb208cdf4ade0ec1a51c9f24d75c";
      };
      default = "r1";
    };
  };
  "0.2.0.1" = {
    sha256 = "e43aaba5a2b1f3e4c59f4a51f5911deacb6d575109f7d234c507c7e736bd770a";
    revisions = {
      r0 = {
        nix = import ../hackage/castagnoli-0.2.0.1-r0-650f2a30e8c0298f10ab1b238914625c53c3d0214f1aa4c2c0094589fb32575a.nix;
        revNum = 0;
        sha256 = "650f2a30e8c0298f10ab1b238914625c53c3d0214f1aa4c2c0094589fb32575a";
      };
      default = "r0";
    };
  };
  "0.2.0.2" = {
    sha256 = "9d87900ff07d524e3f070805cd6b0a278f374115da8e455624c07297831bf4b1";
    revisions = {
      r0 = {
        nix = import ../hackage/castagnoli-0.2.0.2-r0-3dd808433520d6e28cd849048384cb49f22f5ceeb79234d208c9c7b231af4e7b.nix;
        revNum = 0;
        sha256 = "3dd808433520d6e28cd849048384cb49f22f5ceeb79234d208c9c7b231af4e7b";
      };
      default = "r0";
    };
  };
}