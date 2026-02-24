{
  "1.0.0" = {
    sha256 = "ff5ec55f94d8f3477104fb0674e46cf8514b4b0565cb6ec57a84f84d1989fe40";
    revisions = {
      r0 = {
        nix = import ../hackage/int-supply-1.0.0-r0-e1a0c3e642afd80a1174f979a412859890190def8167555ecac247735d185bed.nix;
        revNum = 0;
        sha256 = "e1a0c3e642afd80a1174f979a412859890190def8167555ecac247735d185bed";
      };
      r1 = {
        nix = import ../hackage/int-supply-1.0.0-r1-a74ea9bc9b741423ec0e1b5c6d7dd31662dda200b57791e4fd40d243c7dac50c.nix;
        revNum = 1;
        sha256 = "a74ea9bc9b741423ec0e1b5c6d7dd31662dda200b57791e4fd40d243c7dac50c";
      };
      r2 = {
        nix = import ../hackage/int-supply-1.0.0-r2-7755e75891aa5f671a5e7319ef429c95311efebe1b962a6d250521318acaeb85.nix;
        revNum = 2;
        sha256 = "7755e75891aa5f671a5e7319ef429c95311efebe1b962a6d250521318acaeb85";
      };
      r3 = {
        nix = import ../hackage/int-supply-1.0.0-r3-1d98745d68dc7227f5301015db9eed7375d3bfcda62961f83601770aee053f77.nix;
        revNum = 3;
        sha256 = "1d98745d68dc7227f5301015db9eed7375d3bfcda62961f83601770aee053f77";
      };
      default = "r3";
    };
  };
}