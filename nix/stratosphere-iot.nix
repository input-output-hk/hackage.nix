{
  "1.0.0" = {
    sha256 = "1c22f7a4befe585abd1122e382e1082404657a283f28cec130069eb2d066a615";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-iot-1.0.0-r0-bb73718d0a4e332d8d3219749251a23b258f825cbbccb658c00615452ee16d7d.nix;
        revNum = 0;
        sha256 = "bb73718d0a4e332d8d3219749251a23b258f825cbbccb658c00615452ee16d7d";
      };
      default = "r0";
    };
  };
  "1.0.1" = {
    sha256 = "ef610f4637242afd6ec418a0588e1c8fb1cf07a55f44e874e1097b9b67818bf2";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-iot-1.0.1-r0-2e6e4d6d96fd156d941a945818f2885f32e89c56f043dd3ba00ff1cc9092462a.nix;
        revNum = 0;
        sha256 = "2e6e4d6d96fd156d941a945818f2885f32e89c56f043dd3ba00ff1cc9092462a";
      };
      default = "r0";
    };
  };
}