{
  "0.1" = {
    sha256 = "63ae84a3536f371784f6dd5609811487d3dac871d2bcb30f8df3cad8ae6fbfb5";
    revisions = {
      r0 = {
        nix = import ../hackage/scholdoc-texmath-0.1-r0-6119e99cd53e575bc331589e86be0a6f74af3bfa1d0f7e64a3d231279311042f.nix;
        revNum = 0;
        sha256 = "6119e99cd53e575bc331589e86be0a6f74af3bfa1d0f7e64a3d231279311042f";
      };
      r1 = {
        nix = import ../hackage/scholdoc-texmath-0.1-r1-6edad8e079e78cf90ec39cb90a0c071570d6702fd4c16bc906e63fb72ad61f9f.nix;
        revNum = 1;
        sha256 = "6edad8e079e78cf90ec39cb90a0c071570d6702fd4c16bc906e63fb72ad61f9f";
      };
      default = "r1";
    };
  };
  "0.1.0.1" = {
    sha256 = "2939f906890eb13f488013f787f09ef1e35ee12b29cf06e729638fe15a29cb17";
    revisions = {
      r0 = {
        nix = import ../hackage/scholdoc-texmath-0.1.0.1-r0-a9a10b9c2b90565c6d41f510e5bff6b1bbf1f82a9ed95e863b850af03c9c9f7b.nix;
        revNum = 0;
        sha256 = "a9a10b9c2b90565c6d41f510e5bff6b1bbf1f82a9ed95e863b850af03c9c9f7b";
      };
      default = "r0";
    };
  };
}