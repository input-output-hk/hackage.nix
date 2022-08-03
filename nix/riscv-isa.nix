{
  "0.0.1.0" = {
    sha256 = "1e3cc84534d3295142edb7f721e959071c9da1d83597e38aa0e5e2b6bb08c3b4";
    revisions = {
      r0 = {
        nix = import ../hackage/riscv-isa-0.0.1.0-r0-b6a5fba636fb34c4e9e4492009372c925e97fcf6c72b7b67a133a24cfbe0cd99.nix;
        revNum = 0;
        sha256 = "b6a5fba636fb34c4e9e4492009372c925e97fcf6c72b7b67a133a24cfbe0cd99";
        };
      r1 = {
        nix = import ../hackage/riscv-isa-0.0.1.0-r1-e7754a6db502a75b46e2cebb55cc383f0135de6d0720d78b2a22cfeb8cbd3d93.nix;
        revNum = 1;
        sha256 = "e7754a6db502a75b46e2cebb55cc383f0135de6d0720d78b2a22cfeb8cbd3d93";
        };
      default = "r1";
      };
    };
  "0.0.2.0" = {
    sha256 = "2dce32d548f0c235f55692de9d4b3c6e2c60517454b10b267e9164d8db2ee670";
    revisions = {
      r0 = {
        nix = import ../hackage/riscv-isa-0.0.2.0-r0-aff1d553604b24fb0b194bed5405ab7c4545067fe05ada8079be1ff5e448da1b.nix;
        revNum = 0;
        sha256 = "aff1d553604b24fb0b194bed5405ab7c4545067fe05ada8079be1ff5e448da1b";
        };
      r1 = {
        nix = import ../hackage/riscv-isa-0.0.2.0-r1-80be9061b3a44423b7159119f86104d221eaa3f271e575c6d7fb458bddfc03a5.nix;
        revNum = 1;
        sha256 = "80be9061b3a44423b7159119f86104d221eaa3f271e575c6d7fb458bddfc03a5";
        };
      default = "r1";
      };
    };
  "0.1.0.0" = {
    sha256 = "6a88e07161d0a3bd97cccf3e1d4a88063b09c22e843d6bd7a9af4389849f891a";
    revisions = {
      r0 = {
        nix = import ../hackage/riscv-isa-0.1.0.0-r0-f508799be2ea5fde1f4a9fdb0cf4133aa7277b5df9d42c18d28a70c306dd4554.nix;
        revNum = 0;
        sha256 = "f508799be2ea5fde1f4a9fdb0cf4133aa7277b5df9d42c18d28a70c306dd4554";
        };
      r1 = {
        nix = import ../hackage/riscv-isa-0.1.0.0-r1-f998732d08cb67e2d7b6f80b6f9240caedc65e4297d1d90ca87758e78a247e73.nix;
        revNum = 1;
        sha256 = "f998732d08cb67e2d7b6f80b6f9240caedc65e4297d1d90ca87758e78a247e73";
        };
      default = "r1";
      };
    };
  }