{
  "0.1.0.0" = {
    sha256 = "100ec6d9413abd692f47b4f3dfd8fe743b74c732cce3eb59e9b2084566148ef6";
    revisions = {
      r0 = {
        nix = import ../hackage/poseidon-0.1.0.0-r0-2f26c443a75d4667cc4bd83925c7db20b362e7ec6dfaa0933e1dc69128fffe47.nix;
        revNum = 0;
        sha256 = "2f26c443a75d4667cc4bd83925c7db20b362e7ec6dfaa0933e1dc69128fffe47";
      };
      default = "r0";
    };
  };
  "0.1.1.0" = {
    sha256 = "2271817fd143bb9a576cd83674f10ada47083a4ffe5a9a3e9a5b418a57ee63f8";
    revisions = {
      r0 = {
        nix = import ../hackage/poseidon-0.1.1.0-r0-ace1e8e2b87c7adb03d22cd7719c2050b9e69990c03313331418ea012df515ad.nix;
        revNum = 0;
        sha256 = "ace1e8e2b87c7adb03d22cd7719c2050b9e69990c03313331418ea012df515ad";
      };
      default = "r0";
    };
  };
}