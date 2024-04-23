{
  "1.0.0" = {
    sha256 = "3fd0d1eea9cd759afd86574fdc9bf6f92824cdf459f3d3b94521800668847ce9";
    revisions = {
      r0 = {
        nix = import ../hackage/BiobaseHTTPTools-1.0.0-r0-efba517554cfdbafd583fad9ad8267e76ceb4d9531a36d51f16a9d7506430d22.nix;
        revNum = 0;
        sha256 = "efba517554cfdbafd583fad9ad8267e76ceb4d9531a36d51f16a9d7506430d22";
      };
      r1 = {
        nix = import ../hackage/BiobaseHTTPTools-1.0.0-r1-bcee15edcac176830294f6618e751caaa6e3a6449638f719a10fc01578e32baa.nix;
        revNum = 1;
        sha256 = "bcee15edcac176830294f6618e751caaa6e3a6449638f719a10fc01578e32baa";
      };
      default = "r1";
    };
  };
}