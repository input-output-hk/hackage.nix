{
  "0.1.0.0" = {
    sha256 = "f0a5a13db5bfa121b4989ecf8232295d478ca231d17ea663622881997f70a457";
    revisions = {
      r0 = {
        nix = import ../hackage/usb-hid-0.1.0.0-r0-08789f6c121f587a5625c2fa6b3d24c8aafac2b24070a86eb98bbc77cee83980.nix;
        revNum = 0;
        sha256 = "08789f6c121f587a5625c2fa6b3d24c8aafac2b24070a86eb98bbc77cee83980";
      };
      r1 = {
        nix = import ../hackage/usb-hid-0.1.0.0-r1-3fe150e203f72b72c425bef276254a2ca91ca40cab21f6088838bb32c806e8dc.nix;
        revNum = 1;
        sha256 = "3fe150e203f72b72c425bef276254a2ca91ca40cab21f6088838bb32c806e8dc";
      };
      default = "r1";
    };
  };
}