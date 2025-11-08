{
  "1.0.0" = {
    sha256 = "0ad2e50eff7fae36b96b91e11dc07a1c3d59b7e33e8c4f47f94cfc93cba4acb2";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-proton-1.0.0-r0-4b702568a7acd570fc866365d4cd83da48004a674714c5172d6f2456eac27b54.nix;
        revNum = 0;
        sha256 = "4b702568a7acd570fc866365d4cd83da48004a674714c5172d6f2456eac27b54";
      };
      default = "r0";
    };
  };
  "1.0.1" = {
    sha256 = "e89f9472c752732792670bf4fcaa8393b5f67289a4ba988ddc1d36aeff22e9b7";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-proton-1.0.1-r0-ebe6e49696916cf6751b0f13f97a62940e4a82d466cce026b6d7d8764f70a049.nix;
        revNum = 0;
        sha256 = "ebe6e49696916cf6751b0f13f97a62940e4a82d466cce026b6d7d8764f70a049";
      };
      default = "r0";
    };
  };
}