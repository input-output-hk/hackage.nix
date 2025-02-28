{
  "0.3.0.0" = {
    sha256 = "a1d5e76caafb175df00129956041636451b412c3a2b1b2b0014bae6d32d019d1";
    revisions = {
      r0 = {
        nix = import ../hackage/fs-api-0.3.0.0-r0-2caecc5f21c80a75ee6f9f01e45d887b8e35109b153faa4eb055fc0ea0e42dd8.nix;
        revNum = 0;
        sha256 = "2caecc5f21c80a75ee6f9f01e45d887b8e35109b153faa4eb055fc0ea0e42dd8";
      };
      r1 = {
        nix = import ../hackage/fs-api-0.3.0.0-r1-0cdf6889ecb6c1af1cfe126b718db83c3a02c34e9e09cfb70bd0fd6f8087a885.nix;
        revNum = 1;
        sha256 = "0cdf6889ecb6c1af1cfe126b718db83c3a02c34e9e09cfb70bd0fd6f8087a885";
      };
      default = "r1";
    };
  };
  "0.3.0.1" = {
    sha256 = "89e489968a755e4dcaacae77dba8d54ef3aed25a69f9ead973e4e15e79a34e7a";
    revisions = {
      r0 = {
        nix = import ../hackage/fs-api-0.3.0.1-r0-e6aa28abf64e17db2917d31cdb5732ac4e94fc9f43c0ab896c591ea1e39c0c22.nix;
        revNum = 0;
        sha256 = "e6aa28abf64e17db2917d31cdb5732ac4e94fc9f43c0ab896c591ea1e39c0c22";
      };
      r1 = {
        nix = import ../hackage/fs-api-0.3.0.1-r1-beee19cdc5426a6813225b81494944b537b9b104f33528a8441502ed3065e99f.nix;
        revNum = 1;
        sha256 = "beee19cdc5426a6813225b81494944b537b9b104f33528a8441502ed3065e99f";
      };
      default = "r1";
    };
  };
}