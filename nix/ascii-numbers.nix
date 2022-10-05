{
  "1.0.0.0" = {
    sha256 = "c501420a82cc1e7e4925fc74a160807ade64be77073583635eb5e1376e68b1fe";
    revisions = {
      r0 = {
        nix = import ../hackage/ascii-numbers-1.0.0.0-r0-4989a38ba8a3a6f55a2a937b9e256cc81973a6eece3552293d98cb49aebee970.nix;
        revNum = 0;
        sha256 = "4989a38ba8a3a6f55a2a937b9e256cc81973a6eece3552293d98cb49aebee970";
        };
      default = "r0";
      };
    };
  "1.1.0.0" = {
    sha256 = "3b9a2ffbfbe050f10a0a685aac585461e8a356cf71b904fa9090613d1ff43810";
    revisions = {
      r0 = {
        nix = import ../hackage/ascii-numbers-1.1.0.0-r0-9f772b22ce731083b10c58d15a7e7cde8c11baf19d4f0bc41e6b3e47f1841e51.nix;
        revNum = 0;
        sha256 = "9f772b22ce731083b10c58d15a7e7cde8c11baf19d4f0bc41e6b3e47f1841e51";
        };
      r1 = {
        nix = import ../hackage/ascii-numbers-1.1.0.0-r1-e962bbdaff99970fbe902114d597e1c59cd2d773cbea672e5c2607ffb1348317.nix;
        revNum = 1;
        sha256 = "e962bbdaff99970fbe902114d597e1c59cd2d773cbea672e5c2607ffb1348317";
        };
      r2 = {
        nix = import ../hackage/ascii-numbers-1.1.0.0-r2-17a98657aaf954bcb00f1bc662171794e49255ab349213097da3502c888f865b.nix;
        revNum = 2;
        sha256 = "17a98657aaf954bcb00f1bc662171794e49255ab349213097da3502c888f865b";
        };
      default = "r2";
      };
    };
  }