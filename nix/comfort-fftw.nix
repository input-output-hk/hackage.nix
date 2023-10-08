{
  "0.0" = {
    sha256 = "c5ccc604bd639ec2c54a6e63f60148a2297157193877953e76bafdca837483bc";
    revisions = {
      r0 = {
        nix = import ../hackage/comfort-fftw-0.0-r0-a2672c49a62d085433033816a2c366f209ea6d997807911be1018a86a451f63e.nix;
        revNum = 0;
        sha256 = "a2672c49a62d085433033816a2c366f209ea6d997807911be1018a86a451f63e";
        };
      default = "r0";
      };
    };
  "0.0.0.1" = {
    sha256 = "8bce66b302922889790f9cd445ac87a38a50cc6fb0b130c62412160a27232381";
    revisions = {
      r0 = {
        nix = import ../hackage/comfort-fftw-0.0.0.1-r0-c29087ea6e503dc2fcd448a75e04a2ba030b91a5c2a25bdb8853461ab0d64ece.nix;
        revNum = 0;
        sha256 = "c29087ea6e503dc2fcd448a75e04a2ba030b91a5c2a25bdb8853461ab0d64ece";
        };
      r1 = {
        nix = import ../hackage/comfort-fftw-0.0.0.1-r1-99e7f917fe6d35b1d9ea58301f92031acaf9cee2623457780b677f5cac2492ee.nix;
        revNum = 1;
        sha256 = "99e7f917fe6d35b1d9ea58301f92031acaf9cee2623457780b677f5cac2492ee";
        };
      default = "r1";
      };
    };
  }