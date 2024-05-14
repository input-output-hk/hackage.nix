{
  "2.0" = {
    sha256 = "76e3de101f9c5057881df1588be510b927b2ea7ae47739b3ea7d18d6e9f83203";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-pinpoint-sms-voice-v2-2.0-r0-64c2bfa9eb6740142e781cb7bcaa737183d7464b014d6bc2af97c93ca7be77c5.nix;
        revNum = 0;
        sha256 = "64c2bfa9eb6740142e781cb7bcaa737183d7464b014d6bc2af97c93ca7be77c5";
      };
      r1 = {
        nix = import ../hackage/amazonka-pinpoint-sms-voice-v2-2.0-r1-84a456739ef495a4b24ec7b1ea3214e53f8384301806d387d9de7db0920bf690.nix;
        revNum = 1;
        sha256 = "84a456739ef495a4b24ec7b1ea3214e53f8384301806d387d9de7db0920bf690";
      };
      default = "r1";
    };
  };
}