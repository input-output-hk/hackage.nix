{
  "0.1.0.0" = {
    sha256 = "afd0dc56b2c3254420b7b3590bca606be9a7d6881cacfab04e5fb2dbe31303d9";
    revisions = {
      r0 = {
        nix = import ../hackage/pi-lcd-0.1.0.0-r0-d5167e8666fc9b0397bfa91802106fabccebdfe39c4f8c5487c7df7a1e9580eb.nix;
        revNum = 0;
        sha256 = "d5167e8666fc9b0397bfa91802106fabccebdfe39c4f8c5487c7df7a1e9580eb";
      };
      default = "r0";
    };
  };
  "0.1.1.0" = {
    sha256 = "760360a9548437eae87d6c537fcbb03b4fee3129776bf32ce21c25a3fefc4004";
    revisions = {
      r0 = {
        nix = import ../hackage/pi-lcd-0.1.1.0-r0-2b6d13420275cf3875305d84cc51cbcf5516eea0cacf8f66246f4759137fbd97.nix;
        revNum = 0;
        sha256 = "2b6d13420275cf3875305d84cc51cbcf5516eea0cacf8f66246f4759137fbd97";
      };
      r1 = {
        nix = import ../hackage/pi-lcd-0.1.1.0-r1-ba4a230a55fe836dd0148dee3be169975f8867d81fe1983885981edc4ce9773e.nix;
        revNum = 1;
        sha256 = "ba4a230a55fe836dd0148dee3be169975f8867d81fe1983885981edc4ce9773e";
      };
      default = "r1";
    };
  };
}