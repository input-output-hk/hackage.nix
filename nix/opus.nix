{
  "0.3.0.0" = {
    sha256 = "bc322849898d55fe5793ad651ca063b663786f785b580b131e87b6d35a388f60";
    revisions = {
      r0 = {
        nix = import ../hackage/opus-0.3.0.0-r0-12906f21f0d26eb88bf6c4b1781f17821fcfb3583f1b0b921e2acccdc2e48fd4.nix;
        revNum = 0;
        sha256 = "12906f21f0d26eb88bf6c4b1781f17821fcfb3583f1b0b921e2acccdc2e48fd4";
      };
      r1 = {
        nix = import ../hackage/opus-0.3.0.0-r1-e37ab7a5c469a47853fe0551a0448932cc9eb1e8b67ece188a43dbf5112d17ca.nix;
        revNum = 1;
        sha256 = "e37ab7a5c469a47853fe0551a0448932cc9eb1e8b67ece188a43dbf5112d17ca";
      };
      default = "r1";
    };
  };
}