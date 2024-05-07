{
  "0.1.0.2" = {
    sha256 = "824946ee83e5ecc3914349569244ca9ae0de798dd1f7841c2e953721998979ca";
    revisions = {
      r0 = {
        nix = import ../hackage/blas-hs-0.1.0.2-r0-f3555ade182b11c0d8419c496464b40d4584b0834aed90957ea68ff988428840.nix;
        revNum = 0;
        sha256 = "f3555ade182b11c0d8419c496464b40d4584b0834aed90957ea68ff988428840";
      };
      default = "r0";
    };
  };
  "0.1.1.0" = {
    sha256 = "80e06b0927982b391d239f8656ed437cd29665969d1a078ea4e42a2bf196b086";
    revisions = {
      r0 = {
        nix = import ../hackage/blas-hs-0.1.1.0-r0-d4d0077495ea05712a355051a1ef74d9aa3d9ec8f607d3de1cfbdcc06ed81a95.nix;
        revNum = 0;
        sha256 = "d4d0077495ea05712a355051a1ef74d9aa3d9ec8f607d3de1cfbdcc06ed81a95";
      };
      r1 = {
        nix = import ../hackage/blas-hs-0.1.1.0-r1-925470c0c09e13399a018fec91d3088477f3ce9d3398f1dadee9040ef7f43961.nix;
        revNum = 1;
        sha256 = "925470c0c09e13399a018fec91d3088477f3ce9d3398f1dadee9040ef7f43961";
      };
      default = "r1";
    };
  };
}