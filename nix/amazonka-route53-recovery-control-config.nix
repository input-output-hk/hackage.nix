{
  "2.0" = {
    sha256 = "0b1d214631d48f517a2286c45c6b5aa4180b25ab67bec86e4de898b0d4f46ea5";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-route53-recovery-control-config-2.0-r0-58f907a391490f4463847f088470df1e5425576ac3e981731fccfd057c379d2b.nix;
        revNum = 0;
        sha256 = "58f907a391490f4463847f088470df1e5425576ac3e981731fccfd057c379d2b";
      };
      r1 = {
        nix = import ../hackage/amazonka-route53-recovery-control-config-2.0-r1-c880a9e4c8e02291992b4217ab4529abc299e5ad6b83a50d425ea9b64714c92b.nix;
        revNum = 1;
        sha256 = "c880a9e4c8e02291992b4217ab4529abc299e5ad6b83a50d425ea9b64714c92b";
      };
      default = "r1";
    };
  };
}