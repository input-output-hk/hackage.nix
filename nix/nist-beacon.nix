{
  "0.1.0.0" = {
    sha256 = "049be81c234a09bff4079038360d3fb35b35cfaf49d47e65acf09898ad90c187";
    revisions = {
      r0 = {
        nix = import ../hackage/nist-beacon-0.1.0.0-r0-22aaa3fa14d8962ce321a5da0f76f37cae6dfca6c43fcd85d69478ac16df9945.nix;
        revNum = 0;
        sha256 = "22aaa3fa14d8962ce321a5da0f76f37cae6dfca6c43fcd85d69478ac16df9945";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "00aeb52bcda5e0f3cd3519857d96af3697ca45cee87ee3cc7b521a282f4579e4";
    revisions = {
      r0 = {
        nix = import ../hackage/nist-beacon-0.1.0.1-r0-e89bdd37cff6bafc9f7c112099f2bccf51923b79223f7adc2e1263f6340e728b.nix;
        revNum = 0;
        sha256 = "e89bdd37cff6bafc9f7c112099f2bccf51923b79223f7adc2e1263f6340e728b";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "fe967f892da92b9aae0cfd10be38166b0e5f915760f734df15b1bada95d9722c";
    revisions = {
      r0 = {
        nix = import ../hackage/nist-beacon-0.2.0.0-r0-47d57be91a6c61725b8890c118c0728e8439484cf8f3a87aff0d12f8c9c9d7d5.nix;
        revNum = 0;
        sha256 = "47d57be91a6c61725b8890c118c0728e8439484cf8f3a87aff0d12f8c9c9d7d5";
      };
      r1 = {
        nix = import ../hackage/nist-beacon-0.2.0.0-r1-38a4516610bdf1d86e1204cc66297d74cd53bf6f12434d34d3c28eb016de0f22.nix;
        revNum = 1;
        sha256 = "38a4516610bdf1d86e1204cc66297d74cd53bf6f12434d34d3c28eb016de0f22";
      };
      default = "r1";
    };
  };
}