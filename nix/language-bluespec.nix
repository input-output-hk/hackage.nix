{
  "0.1" = {
    sha256 = "c784ddf43eca1d228aeef587008394918543b2c7ce18a71ee1453af0f5e0c1aa";
    revisions = {
      r0 = {
        nix = import ../hackage/language-bluespec-0.1-r0-2d86289500732d4b0ec2f265cb0749aa078ede847b77e1dafe72b590816122ab.nix;
        revNum = 0;
        sha256 = "2d86289500732d4b0ec2f265cb0749aa078ede847b77e1dafe72b590816122ab";
      };
      r1 = {
        nix = import ../hackage/language-bluespec-0.1-r1-06d9df549d268b593db8eceafe54c29832f0b857b24ac6a936c50bc5211c0bce.nix;
        revNum = 1;
        sha256 = "06d9df549d268b593db8eceafe54c29832f0b857b24ac6a936c50bc5211c0bce";
      };
      default = "r1";
    };
  };
}