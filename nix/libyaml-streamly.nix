{
  "0.2.0" = {
    sha256 = "690615a2ebe15aae8fd6166ac3868493bba76b92f41ff963fe913274fc567753";
    revisions = {
      r0 = {
        nix = import ../hackage/libyaml-streamly-0.2.0-r0-b059dfc837531dbb8439d71bf99e8a467442fa4b2484fa231479933ee02d4756.nix;
        revNum = 0;
        sha256 = "b059dfc837531dbb8439d71bf99e8a467442fa4b2484fa231479933ee02d4756";
        };
      r1 = {
        nix = import ../hackage/libyaml-streamly-0.2.0-r1-daf997214ce32b910f3f050dfdd43afcf042c75c8bc9ffca6045cd0d425aa32c.nix;
        revNum = 1;
        sha256 = "daf997214ce32b910f3f050dfdd43afcf042c75c8bc9ffca6045cd0d425aa32c";
        };
      default = "r1";
      };
    };
  "0.2.1" = {
    sha256 = "7395570f41a62cbc0bb146fa49fb64c56dc18606afae3dae870d76452340094a";
    revisions = {
      r0 = {
        nix = import ../hackage/libyaml-streamly-0.2.1-r0-b80700b9df9ea4d5a589523cc21c3166c8e3c79f4a06b625bb601581d3a0e673.nix;
        revNum = 0;
        sha256 = "b80700b9df9ea4d5a589523cc21c3166c8e3c79f4a06b625bb601581d3a0e673";
        };
      r1 = {
        nix = import ../hackage/libyaml-streamly-0.2.1-r1-1cc190979e666cab2165cbfcdfde5ce94d4782037a5ffdccb7e49d48cdffc451.nix;
        revNum = 1;
        sha256 = "1cc190979e666cab2165cbfcdfde5ce94d4782037a5ffdccb7e49d48cdffc451";
        };
      default = "r1";
      };
    };
  }