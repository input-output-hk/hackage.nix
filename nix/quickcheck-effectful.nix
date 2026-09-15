{
  "1.0.0" = {
    sha256 = "e5f919da445edd4216c0ace2d499ec28a559881e5093e62fbfa5f64c163a3afb";
    revisions = {
      r0 = {
        nix = import ../hackage/quickcheck-effectful-1.0.0-r0-273a10ba76cb45c5ffd293c7557b2815728f9c24212bfc91016618f366166766.nix;
        revNum = 0;
        sha256 = "273a10ba76cb45c5ffd293c7557b2815728f9c24212bfc91016618f366166766";
      };
      r1 = {
        nix = import ../hackage/quickcheck-effectful-1.0.0-r1-ee3d0bc9fc786e3457ff3093ff6643626bfd174ab02fd379fb885c7253c6e434.nix;
        revNum = 1;
        sha256 = "ee3d0bc9fc786e3457ff3093ff6643626bfd174ab02fd379fb885c7253c6e434";
      };
      default = "r1";
    };
  };
}