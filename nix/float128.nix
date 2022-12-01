{
  "0.1" = {
    sha256 = "e34c993bacabfd24128594dac345073d0bbedf9af20b41696a461a8f8bcc9638";
    revisions = {
      r0 = {
        nix = import ../hackage/float128-0.1-r0-f8bca259a1c29320643dfc2cdea684b5b3e3e3ba3bdce08d3240cf523ff02894.nix;
        revNum = 0;
        sha256 = "f8bca259a1c29320643dfc2cdea684b5b3e3e3ba3bdce08d3240cf523ff02894";
        };
      r1 = {
        nix = import ../hackage/float128-0.1-r1-8337f1b8fd00013c12d60b05b509df6a197d2dcaa9361d1bdebb3ef5d2ab2368.nix;
        revNum = 1;
        sha256 = "8337f1b8fd00013c12d60b05b509df6a197d2dcaa9361d1bdebb3ef5d2ab2368";
        };
      default = "r1";
      };
    };
  }