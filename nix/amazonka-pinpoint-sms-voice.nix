{
  "2.0" = {
    sha256 = "bfb856c5b7b01352eead289a91238bae5f4573ff600a455c4eebb278a7240b9b";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-pinpoint-sms-voice-2.0-r0-1c461808024d50129e5347c97e166c01526254baaaa8611b9426700ceacfa07a.nix;
        revNum = 0;
        sha256 = "1c461808024d50129e5347c97e166c01526254baaaa8611b9426700ceacfa07a";
      };
      r1 = {
        nix = import ../hackage/amazonka-pinpoint-sms-voice-2.0-r1-74f3996acc128e69a94ef489a350961b24d631257a5f7cdd1214c51329571a89.nix;
        revNum = 1;
        sha256 = "74f3996acc128e69a94ef489a350961b24d631257a5f7cdd1214c51329571a89";
      };
      default = "r1";
    };
  };
}