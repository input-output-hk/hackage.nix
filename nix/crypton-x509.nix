{
  "1.7.6" = {
    sha256 = "ebb74aca2d00261e2fb4927d211ba1a174e190e5257f309e190f019727f8caff";
    revisions = {
      r0 = {
        nix = import ../hackage/crypton-x509-1.7.6-r0-211067017c5e8ea3657ad14b9b3e5618f5907e63e58545970bafeb25e82d3857.nix;
        revNum = 0;
        sha256 = "211067017c5e8ea3657ad14b9b3e5618f5907e63e58545970bafeb25e82d3857";
      };
      r1 = {
        nix = import ../hackage/crypton-x509-1.7.6-r1-c567657a705b6d6521f9dd2de999bf530d618ec00f3b939df76a41fb0fe94281.nix;
        revNum = 1;
        sha256 = "c567657a705b6d6521f9dd2de999bf530d618ec00f3b939df76a41fb0fe94281";
      };
      r2 = {
        nix = import ../hackage/crypton-x509-1.7.6-r2-19a6f233a73952c408599d082db8d6a3487ab9c1abe0fa350b8d362ab61776ad.nix;
        revNum = 2;
        sha256 = "19a6f233a73952c408599d082db8d6a3487ab9c1abe0fa350b8d362ab61776ad";
      };
      default = "r2";
    };
  };
  "1.7.7" = {
    sha256 = "efece48c8c4adfee209979c2967037d90e6ba1b7b4e7bb1081d1d4cd93daf382";
    revisions = {
      r0 = {
        nix = import ../hackage/crypton-x509-1.7.7-r0-bc5834cabe1a301ff1ab50f373a50b5ce237ea4ea01f008f554544ab8cae1686.nix;
        revNum = 0;
        sha256 = "bc5834cabe1a301ff1ab50f373a50b5ce237ea4ea01f008f554544ab8cae1686";
      };
      default = "r0";
    };
  };
  "1.8.0" = {
    sha256 = "7ce8c6d12c1dea1096895ca02d0b27dd8f6e0389de2956e9fe11cc22a8f1c2cd";
    revisions = {
      r0 = {
        nix = import ../hackage/crypton-x509-1.8.0-r0-d4822ba8dcb19ee3233fc98152f5afda383ac952770a1d07f1d01168e9fcdbc2.nix;
        revNum = 0;
        sha256 = "d4822ba8dcb19ee3233fc98152f5afda383ac952770a1d07f1d01168e9fcdbc2";
      };
      default = "r0";
    };
  };
}