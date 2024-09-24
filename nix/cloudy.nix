{
  "0.1.0.0" = {
    sha256 = "dfcf1ab41481c011a223f6e7f70fc68c9a89de872dcb04324f6f6d5c7d67909b";
    revisions = {
      r0 = {
        nix = import ../hackage/cloudy-0.1.0.0-r0-bbbf36d8b43619d482e95beb9ae3296ac98cadfa5b98bda37a88d558e840f511.nix;
        revNum = 0;
        sha256 = "bbbf36d8b43619d482e95beb9ae3296ac98cadfa5b98bda37a88d558e840f511";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "fc08b81a23c132ba857ca0036ba93bca75ca1ed7c9fe2a0af17779ba895ba36f";
    revisions = {
      r0 = {
        nix = import ../hackage/cloudy-0.1.0.1-r0-009b71adb4c7f2903374dbe2ac93665692c1f21a35b9fa17c548f4ca46292454.nix;
        revNum = 0;
        sha256 = "009b71adb4c7f2903374dbe2ac93665692c1f21a35b9fa17c548f4ca46292454";
      };
      default = "r0";
    };
  };
}