{
  "0.1.0.0" = {
    sha256 = "61b3c466ca8b8d975c2236081a45a0a474585fdd424c7d7f4ddc7828e0c74a37";
    revisions = {
      r0 = {
        nix = import ../hackage/text-containers-0.1.0.0-r0-ffaff851635915e8d762fc061ada764dc6b71030d8c406c861806dcff31bafba.nix;
        revNum = 0;
        sha256 = "ffaff851635915e8d762fc061ada764dc6b71030d8c406c861806dcff31bafba";
        };
      r1 = {
        nix = import ../hackage/text-containers-0.1.0.0-r1-1943b020ec03bc81a04ad05d503cb90f83f4f6e92de81cbc123c12e3414a69b7.nix;
        revNum = 1;
        sha256 = "1943b020ec03bc81a04ad05d503cb90f83f4f6e92de81cbc123c12e3414a69b7";
        };
      r2 = {
        nix = import ../hackage/text-containers-0.1.0.0-r2-fdb3977057ae5ce3556f08ada4f03ba9a801639e1ef9560a026642e818535a63.nix;
        revNum = 2;
        sha256 = "fdb3977057ae5ce3556f08ada4f03ba9a801639e1ef9560a026642e818535a63";
        };
      default = "r2";
      };
    };
  }