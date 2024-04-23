{
  "0.1.0.0" = {
    sha256 = "fed35546a86fc80464467d405e2164c864608d42717e2f322f1f62b513dabb73";
    revisions = {
      r0 = {
        nix = import ../hackage/hetero-dict-0.1.0.0-r0-f8cf77ffd19a7b39857ff746f5327a4326421d812bcd6585b752f55d732518ac.nix;
        revNum = 0;
        sha256 = "f8cf77ffd19a7b39857ff746f5327a4326421d812bcd6585b752f55d732518ac";
      };
      r1 = {
        nix = import ../hackage/hetero-dict-0.1.0.0-r1-09426dcfa76574a28c4f3ac6a63ef40740094dbbcc63191c3867e678facf86c5.nix;
        revNum = 1;
        sha256 = "09426dcfa76574a28c4f3ac6a63ef40740094dbbcc63191c3867e678facf86c5";
      };
      default = "r1";
    };
  };
  "0.1.0.1" = {
    sha256 = "8c25acb5c751492aa5d504e5262d9eb0f8a4e863b3038b267809d15a6db3d709";
    revisions = {
      r0 = {
        nix = import ../hackage/hetero-dict-0.1.0.1-r0-5e4cf8d01c4d46af1af86278d6c6321c90c39f08696f1dc763f0eb55b812deb3.nix;
        revNum = 0;
        sha256 = "5e4cf8d01c4d46af1af86278d6c6321c90c39f08696f1dc763f0eb55b812deb3";
      };
      default = "r0";
    };
  };
  "0.1.1.0" = {
    sha256 = "880b8f1659099bfb7656b9aa854255b3612bc52633736d3a1246752450a33169";
    revisions = {
      r0 = {
        nix = import ../hackage/hetero-dict-0.1.1.0-r0-37254cb237505a31e07cf75b685b3cdcc8c5d7a8b2e38ad3f631534a044219a7.nix;
        revNum = 0;
        sha256 = "37254cb237505a31e07cf75b685b3cdcc8c5d7a8b2e38ad3f631534a044219a7";
      };
      r1 = {
        nix = import ../hackage/hetero-dict-0.1.1.0-r1-911c8f64b114f81127dcbfcddfc3e8e98c512032bf19e239dc202b1056aaab94.nix;
        revNum = 1;
        sha256 = "911c8f64b114f81127dcbfcddfc3e8e98c512032bf19e239dc202b1056aaab94";
      };
      default = "r1";
    };
  };
}