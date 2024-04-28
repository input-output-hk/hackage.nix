{
  "0.1.0.0" = {
    sha256 = "0e6d3a6dbe3a72617d02a1ec8f3f8bde6f6151b0109d84702ff14aa64f2462a4";
    revisions = {
      r0 = {
        nix = import ../hackage/kudzu-0.1.0.0-r0-74e0de29fb795f046e9054cf50cca62247f0230c71432ce37098a57d2adaa705.nix;
        revNum = 0;
        sha256 = "74e0de29fb795f046e9054cf50cca62247f0230c71432ce37098a57d2adaa705";
      };
      default = "r0";
    };
  };
  "0.1.1.0" = {
    sha256 = "7e6852d8d7ee64660d0b19f9477ec70b97382ed84da1df86fee9683f3162376d";
    revisions = {
      r0 = {
        nix = import ../hackage/kudzu-0.1.1.0-r0-16699b3f6d22eb267d284164e3ddadadc4a2de189256e722411b5de25864ca44.nix;
        revNum = 0;
        sha256 = "16699b3f6d22eb267d284164e3ddadadc4a2de189256e722411b5de25864ca44";
      };
      default = "r0";
    };
  };
}