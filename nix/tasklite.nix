{
  "0.3.0.0" = {
    sha256 = "1a02ef3d1e5e3bc88319917d1123be5dc35727e6fc11b0f7f5b49b695670b77e";
    revisions = {
      r0 = {
        nix = import ../hackage/tasklite-0.3.0.0-r0-79789d5263f6d5cc0ac2ac580b2c753954587df95fbd2310950e35692374cfd0.nix;
        revNum = 0;
        sha256 = "79789d5263f6d5cc0ac2ac580b2c753954587df95fbd2310950e35692374cfd0";
      };
      default = "r0";
    };
  };
  "0.5.0.0" = {
    sha256 = "af8741807489d1b8f2d1786d6bb81a88fb829c89b426fc3398af3c6a3672a33b";
    revisions = {
      r0 = {
        nix = import ../hackage/tasklite-0.5.0.0-r0-3b0516d61f5e02d6890cf3ef5523e94e7f59b1c092c370483f53e088d130428b.nix;
        revNum = 0;
        sha256 = "3b0516d61f5e02d6890cf3ef5523e94e7f59b1c092c370483f53e088d130428b";
      };
      default = "r0";
    };
  };
}