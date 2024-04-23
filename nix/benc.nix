{
  "0.1.0.0" = {
    sha256 = "6a8e3f23b5b2b01620923744faee0bf7b81711413bb3c835fb87fd37136a9fdb";
    revisions = {
      r0 = {
        nix = import ../hackage/benc-0.1.0.0-r0-72c905be36e53515b96fa2ccbe8769fa903db31be5b607437652bc74f923fdb2.nix;
        revNum = 0;
        sha256 = "72c905be36e53515b96fa2ccbe8769fa903db31be5b607437652bc74f923fdb2";
      };
      default = "r0";
    };
  };
  "0.1.1.0" = {
    sha256 = "f1beef98e8b4d1784d8a80bf0e1ea6d124d0e08f60ebe4bcafe0f1f42f36178a";
    revisions = {
      r0 = {
        nix = import ../hackage/benc-0.1.1.0-r0-2b6dc72b27b04260198b43d4515ced60e0639356a592f8e605bd99060c0fcba9.nix;
        revNum = 0;
        sha256 = "2b6dc72b27b04260198b43d4515ced60e0639356a592f8e605bd99060c0fcba9";
      };
      default = "r0";
    };
  };
}