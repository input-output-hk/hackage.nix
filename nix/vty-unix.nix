{
  "0.1.0.0" = {
    sha256 = "7faa08b40b6dae02abe518c87b7003876b2e988b620e0b73877bb506383c1295";
    revisions = {
      r0 = {
        nix = import ../hackage/vty-unix-0.1.0.0-r0-8d1dd971d49b4d3575ec76994a8dd5d330d7b81a30ece40344ee170d73a28ac3.nix;
        revNum = 0;
        sha256 = "8d1dd971d49b4d3575ec76994a8dd5d330d7b81a30ece40344ee170d73a28ac3";
        };
      r1 = {
        nix = import ../hackage/vty-unix-0.1.0.0-r1-13e8f652e8e74f980761c9c0fddfdde40c4c9bf36c4b8327dfb9e2dddcfbc66d.nix;
        revNum = 1;
        sha256 = "13e8f652e8e74f980761c9c0fddfdde40c4c9bf36c4b8327dfb9e2dddcfbc66d";
        };
      default = "r1";
      };
    };
  "0.2.0.0" = {
    sha256 = "c2ab67e09edc4bade04e269adc059320e83f68b31e428d11a69b20c4f161ddc1";
    revisions = {
      r0 = {
        nix = import ../hackage/vty-unix-0.2.0.0-r0-2af3d0bdae3c4b7b7e567ee374efe32c7439fabdf9096465ce011a6c6736e9ae.nix;
        revNum = 0;
        sha256 = "2af3d0bdae3c4b7b7e567ee374efe32c7439fabdf9096465ce011a6c6736e9ae";
        };
      default = "r0";
      };
    };
  }