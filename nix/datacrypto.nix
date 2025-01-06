{
  "1.0.0" = {
    sha256 = "83731b6078a5dc0a569966566d5a6b18e7322f830288c058eb98cdac7fa9fe05";
    revisions = {
      r0 = {
        nix = import ../hackage/datacrypto-1.0.0-r0-0bf9d0d659b18bd2016823ef363792d63bb6036c3b5cd6274fc762dff2647130.nix;
        revNum = 0;
        sha256 = "0bf9d0d659b18bd2016823ef363792d63bb6036c3b5cd6274fc762dff2647130";
      };
      default = "r0";
    };
  };
  "1.1.0" = {
    sha256 = "f814d07bc50d08d17e6889c051dc23d421c19107ea0f64c102ae1a3fa3ee09ff";
    revisions = {
      r0 = {
        nix = import ../hackage/datacrypto-1.1.0-r0-06e48ea765931375d8160fbd11b9ab9630091e5a83aed76de5383895fd3098aa.nix;
        revNum = 0;
        sha256 = "06e48ea765931375d8160fbd11b9ab9630091e5a83aed76de5383895fd3098aa";
      };
      default = "r0";
    };
  };
}