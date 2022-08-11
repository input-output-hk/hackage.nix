{
  "0.1.0.0" = {
    sha256 = "a888210f6467f155090653734be5cc920406a07227e0d3adb59096716fdb806c";
    revisions = {
      r0 = {
        nix = import ../hackage/vector-stream-0.1.0.0-r0-5500b39bd69ba5384638db0b451c8eaf40ef52544355741bd73436b0da9ec3a8.nix;
        revNum = 0;
        sha256 = "5500b39bd69ba5384638db0b451c8eaf40ef52544355741bd73436b0da9ec3a8";
        };
      r1 = {
        nix = import ../hackage/vector-stream-0.1.0.0-r1-09b0f8dc4e51936b9d6b04791f0aa03f7c9759b5fb7140eac8a9461cda1e55a3.nix;
        revNum = 1;
        sha256 = "09b0f8dc4e51936b9d6b04791f0aa03f7c9759b5fb7140eac8a9461cda1e55a3";
        };
      default = "r1";
      };
    };
  }