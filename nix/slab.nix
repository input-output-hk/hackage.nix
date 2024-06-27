{
  "0.0.1.0" = {
    sha256 = "4086bba19b0683c3d8fc24f52818468eca509eaf33d18d6037eda553f4806bfb";
    revisions = {
      r0 = {
        nix = import ../hackage/slab-0.0.1.0-r0-2acda256bdeb92815300ae2b3688d3219d7966a69600bfb765ca595524a99d39.nix;
        revNum = 0;
        sha256 = "2acda256bdeb92815300ae2b3688d3219d7966a69600bfb765ca595524a99d39";
      };
      default = "r0";
    };
  };
  "0.0.2.0" = {
    sha256 = "f72d2e9a8a38446c312592ad820ecb1de0bf4effbc200a7d2dcaf11f180106ea";
    revisions = {
      r0 = {
        nix = import ../hackage/slab-0.0.2.0-r0-5ff7f5fdbd8e3c29455bb18778d3c7b3edce1f9c8216fd2dae3eb8e55c46865b.nix;
        revNum = 0;
        sha256 = "5ff7f5fdbd8e3c29455bb18778d3c7b3edce1f9c8216fd2dae3eb8e55c46865b";
      };
      default = "r0";
    };
  };
}