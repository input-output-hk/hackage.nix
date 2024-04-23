{
  "0.1" = {
    sha256 = "afd2eae342bf3a5b3be0e8ce0ab8227882a55b6219f1ee77541d9a66163a9873";
    revisions = {
      r0 = {
        nix = import ../hackage/cf-0.1-r0-622a43e48e197f31701017f0f39075b9229608457266bc2535945dce39724cc2.nix;
        revNum = 0;
        sha256 = "622a43e48e197f31701017f0f39075b9229608457266bc2535945dce39724cc2";
      };
      r1 = {
        nix = import ../hackage/cf-0.1-r1-6bd39af35810e6a40142d87fdd9fc91754fe85098a63a8087626bf9916bd3362.nix;
        revNum = 1;
        sha256 = "6bd39af35810e6a40142d87fdd9fc91754fe85098a63a8087626bf9916bd3362";
      };
      default = "r1";
    };
  };
  "0.2" = {
    sha256 = "6a32bc9fa0499df8ef94a10c224275b85fdd27496705be97963930526dc18751";
    revisions = {
      r0 = {
        nix = import ../hackage/cf-0.2-r0-5482b8ba333eeecf79d4e6702a2997e50482447a77d6a83e04580ef11768c29f.nix;
        revNum = 0;
        sha256 = "5482b8ba333eeecf79d4e6702a2997e50482447a77d6a83e04580ef11768c29f";
      };
      default = "r0";
    };
  };
  "0.3" = {
    sha256 = "07e89cefed3a28aefc8ac7b7eac29f1c18d7d73defbed705e409abb16842221b";
    revisions = {
      r0 = {
        nix = import ../hackage/cf-0.3-r0-2a603ed89a121ae981ce2c64e3087f6881ebf11c0e297c203a7df99230fc3f4d.nix;
        revNum = 0;
        sha256 = "2a603ed89a121ae981ce2c64e3087f6881ebf11c0e297c203a7df99230fc3f4d";
      };
      default = "r0";
    };
  };
  "0.4" = {
    sha256 = "57c538db04d90eb9bffc260a6352f15f34fedd4225e9e9adfd31cbfdd0a8569c";
    revisions = {
      r0 = {
        nix = import ../hackage/cf-0.4-r0-a96de83d09acc0a5badbafce5a3b155f9508c052760c7f0a8d2bf552e26743f9.nix;
        revNum = 0;
        sha256 = "a96de83d09acc0a5badbafce5a3b155f9508c052760c7f0a8d2bf552e26743f9";
      };
      default = "r0";
    };
  };
  "0.4.1" = {
    sha256 = "1d3bd0bab9a927e0efd386e8786ad7e0936921553edf275e7d2b676b40c310fd";
    revisions = {
      r0 = {
        nix = import ../hackage/cf-0.4.1-r0-96b1d5c7355b1af76f0dafd7f27df7dd204e2417ad804d2f6f1896deefc76b57.nix;
        revNum = 0;
        sha256 = "96b1d5c7355b1af76f0dafd7f27df7dd204e2417ad804d2f6f1896deefc76b57";
      };
      r1 = {
        nix = import ../hackage/cf-0.4.1-r1-9fd574edfce6ea014201ccc3591638de0574f251290bcf0f44a8a00338131692.nix;
        revNum = 1;
        sha256 = "9fd574edfce6ea014201ccc3591638de0574f251290bcf0f44a8a00338131692";
      };
      default = "r1";
    };
  };
  "0.4.2" = {
    sha256 = "f2852d1f13c434f5e49ed319afc8f1a79cbb5e06d4235e5b342dc44cba6c2519";
    revisions = {
      r0 = {
        nix = import ../hackage/cf-0.4.2-r0-91e1660bde2c8d2e69423a518032f2f6873ba3e31140e0250e89fa63ec823ec5.nix;
        revNum = 0;
        sha256 = "91e1660bde2c8d2e69423a518032f2f6873ba3e31140e0250e89fa63ec823ec5";
      };
      default = "r0";
    };
  };
}