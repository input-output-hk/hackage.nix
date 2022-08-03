{
  "0.8" = {
    sha256 = "bc4626d594aff6eef965ce2e930395991097ce0f4fd173509d6ddac4c732d794";
    revisions = {
      r0 = {
        nix = import ../hackage/quipper-core-0.8-r0-8f743683f4c851fa16c2d7c1101bb2e3aeb56cbdf5fef8119fe652a0964cfb66.nix;
        revNum = 0;
        sha256 = "8f743683f4c851fa16c2d7c1101bb2e3aeb56cbdf5fef8119fe652a0964cfb66";
        };
      r1 = {
        nix = import ../hackage/quipper-core-0.8-r1-d4903ec32d1d902fbe2b03363ab501fa27d02646593a988b944b8c145e5f99bd.nix;
        revNum = 1;
        sha256 = "d4903ec32d1d902fbe2b03363ab501fa27d02646593a988b944b8c145e5f99bd";
        };
      r2 = {
        nix = import ../hackage/quipper-core-0.8-r2-5ae3bee3dac2abaf0253849de0ec442739cdc67bc95710553cfa31c73e10ff64.nix;
        revNum = 2;
        sha256 = "5ae3bee3dac2abaf0253849de0ec442739cdc67bc95710553cfa31c73e10ff64";
        };
      default = "r2";
      };
    };
  "0.8.0.1" = {
    sha256 = "17d0361ed260f16cce989175164d3b81ba0af1c5970bf91a4aebcca21ef0e163";
    revisions = {
      r0 = {
        nix = import ../hackage/quipper-core-0.8.0.1-r0-5e795935d5393f0ddb0db49492d3bc17aa53db2d1e5068c3275eb2731c054048.nix;
        revNum = 0;
        sha256 = "5e795935d5393f0ddb0db49492d3bc17aa53db2d1e5068c3275eb2731c054048";
        };
      default = "r0";
      };
    };
  }