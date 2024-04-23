{
  "0.1" = {
    sha256 = "ee753ed0d235e4aaebb60539611f87ff3bc1643c39d136b2b9505d24deeba979";
    revisions = {
      r0 = {
        nix = import ../hackage/fitsio-0.1-r0-bce6ba708502b8f6e626f5dd4020b60e833202ce75b8351cddd1b33f7adf1eec.nix;
        revNum = 0;
        sha256 = "bce6ba708502b8f6e626f5dd4020b60e833202ce75b8351cddd1b33f7adf1eec";
      };
      default = "r0";
    };
  };
  "0.2" = {
    sha256 = "4fe968152b2a60f43ace145ac157fc0c55a54f7a7f92c975b61961660b68fa1f";
    revisions = {
      r0 = {
        nix = import ../hackage/fitsio-0.2-r0-5631a49e28c999ac4d559acad161e9d1cbd56deeaa47ab24cfda26fe610db4eb.nix;
        revNum = 0;
        sha256 = "5631a49e28c999ac4d559acad161e9d1cbd56deeaa47ab24cfda26fe610db4eb";
      };
      default = "r0";
    };
  };
}