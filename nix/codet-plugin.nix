{
  "0.1" = {
    sha256 = "b3f0f5017035a0b1f2ad3b4d536624490ab8b7c19f0dd4ac8876584493b1f5da";
    revisions = {
      r0 = {
        nix = import ../hackage/codet-plugin-0.1-r0-35641f0b9c7125ab907b60ae0c9b48d3476acd774e4f12d29e72ad5bdb487f75.nix;
        revNum = 0;
        sha256 = "35641f0b9c7125ab907b60ae0c9b48d3476acd774e4f12d29e72ad5bdb487f75";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "663da817bb703ecb39014d96ed817328ad30a408f39dd6060680e3002070ad85";
    revisions = {
      r0 = {
        nix = import ../hackage/codet-plugin-0.1.0.1-r0-0d3cbf9c27467538fee7a5d121f62a9a168e25ac8a5a98bfbfd3d7d6937a711f.nix;
        revNum = 0;
        sha256 = "0d3cbf9c27467538fee7a5d121f62a9a168e25ac8a5a98bfbfd3d7d6937a711f";
      };
      r1 = {
        nix = import ../hackage/codet-plugin-0.1.0.1-r1-01a1691a43997da9fbfbea6ce3001eab0348d5d205907701786c4c9548ee5962.nix;
        revNum = 1;
        sha256 = "01a1691a43997da9fbfbea6ce3001eab0348d5d205907701786c4c9548ee5962";
      };
      default = "r1";
    };
  };
}