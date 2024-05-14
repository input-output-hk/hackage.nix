{
  "2.0" = {
    sha256 = "3808826f1a6e0dc590b659b42c8528a46fd1104d623546e181bc5f71b34b9186";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-sesv2-2.0-r0-0b329f0d9a384bd8a708d946701869bf8accc5808d3a83f0132797ab316663b2.nix;
        revNum = 0;
        sha256 = "0b329f0d9a384bd8a708d946701869bf8accc5808d3a83f0132797ab316663b2";
      };
      r1 = {
        nix = import ../hackage/amazonka-sesv2-2.0-r1-c447952387732f1e43f3af93e33f513e73cd8a68208b68a1bb5405dcaa9da713.nix;
        revNum = 1;
        sha256 = "c447952387732f1e43f3af93e33f513e73cd8a68208b68a1bb5405dcaa9da713";
      };
      default = "r1";
    };
  };
}