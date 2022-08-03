{
  "1.1" = {
    sha256 = "10d6502070ab3de2dfa7debea5f3736d4ad6062f2147081371bc30c800c646f7";
    revisions = {
      r0 = {
        nix = import ../hackage/backdropper-1.1-r0-ab7a60e80f6472d89e735352c16e1e4f5bd95109ffd99fc03cbf87a6af029825.nix;
        revNum = 0;
        sha256 = "ab7a60e80f6472d89e735352c16e1e4f5bd95109ffd99fc03cbf87a6af029825";
        };
      default = "r0";
      };
    };
  "1.2" = {
    sha256 = "5e522f3aa25ad7ba5060df41b095621d182c1908d9d740b64e963ee7c505bbfc";
    revisions = {
      r0 = {
        nix = import ../hackage/backdropper-1.2-r0-b3315b5696563dc921071593b2d687ebfe93fcb122218b5763183b760b399c59.nix;
        revNum = 0;
        sha256 = "b3315b5696563dc921071593b2d687ebfe93fcb122218b5763183b760b399c59";
        };
      default = "r0";
      };
    };
  }