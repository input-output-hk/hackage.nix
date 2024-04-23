{
  "0.1" = {
    sha256 = "b1affc0bd313d13e990e7048b8c681bacd3d71b0a56af7fbbe8bc3832b556cf4";
    revisions = {
      r0 = {
        nix = import ../hackage/scanner-attoparsec-0.1-r0-510119a08beb62c193f33291148b7b1104313cbc0bf1b79a5536222a62cac4ae.nix;
        revNum = 0;
        sha256 = "510119a08beb62c193f33291148b7b1104313cbc0bf1b79a5536222a62cac4ae";
      };
      default = "r0";
    };
  };
  "0.2" = {
    sha256 = "10e5625e3f131f918deecccf85025f287b224e636fb42568ce427a3e359acab7";
    revisions = {
      r0 = {
        nix = import ../hackage/scanner-attoparsec-0.2-r0-e900f2254fd51ae6b18f2daaf702eb353bd6780b81aad7ef1f90cc29a11f7eb5.nix;
        revNum = 0;
        sha256 = "e900f2254fd51ae6b18f2daaf702eb353bd6780b81aad7ef1f90cc29a11f7eb5";
      };
      default = "r0";
    };
  };
}