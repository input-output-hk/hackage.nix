{
  "0.0.1.0" = {
    sha256 = "8c5f08aa0ae5ae97206fd4574d2ac07cec91dae206714c46c9b9d29aff6b7603";
    revisions = {
      r0 = {
        nix = import ../hackage/pqi-native-0.0.1.0-r0-ed983ebb9c60bd440d7aabe0b70a2833dc6d54492cf125ed5c832be0d5545e9c.nix;
        revNum = 0;
        sha256 = "ed983ebb9c60bd440d7aabe0b70a2833dc6d54492cf125ed5c832be0d5545e9c";
      };
      default = "r0";
    };
  };
  "0.0.1.1" = {
    sha256 = "6a4d74506f6bf59f58243bf988b70f7afd9d9478f3217c26ca20519446074380";
    revisions = {
      r0 = {
        nix = import ../hackage/pqi-native-0.0.1.1-r0-5dac7cb87ef5e657f04106bd175b1aac124183566f8f393793debed830794d56.nix;
        revNum = 0;
        sha256 = "5dac7cb87ef5e657f04106bd175b1aac124183566f8f393793debed830794d56";
      };
      default = "r0";
    };
  };
}