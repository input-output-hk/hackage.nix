{
  "0.0.1" = {
    sha256 = "ddd73777101f49566654bae02203424bc7f4dd55ba5b839b5d2d8d4fa6d0812e";
    revisions = {
      r0 = {
        nix = import ../hackage/data-default-extra-0.0.1-r0-dbe2e66801aba51d985c1bfb42103bc493bcb6f7d9aa92e35f183a7bf9ffd605.nix;
        revNum = 0;
        sha256 = "dbe2e66801aba51d985c1bfb42103bc493bcb6f7d9aa92e35f183a7bf9ffd605";
      };
      r1 = {
        nix = import ../hackage/data-default-extra-0.0.1-r1-f8601f01a8d071cc86b5d14544b579d249f0c50893990da8f183c058a3c5a5e3.nix;
        revNum = 1;
        sha256 = "f8601f01a8d071cc86b5d14544b579d249f0c50893990da8f183c058a3c5a5e3";
      };
      default = "r1";
    };
  };
  "0.1.0" = {
    sha256 = "7feaac7ae76fae615736d9a1577cb26ebd11a9cae48c88235821497fd5dee5f9";
    revisions = {
      r0 = {
        nix = import ../hackage/data-default-extra-0.1.0-r0-93923f4b1678ee70888eae2ba5fc89cfd9748a2a9d64923cc1f827415543435a.nix;
        revNum = 0;
        sha256 = "93923f4b1678ee70888eae2ba5fc89cfd9748a2a9d64923cc1f827415543435a";
      };
      default = "r0";
    };
  };
}