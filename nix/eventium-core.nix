{
  "0.1.0" = {
    sha256 = "eb548ed76d4e68a7eac4de283aa4eaf3d17fd56fc49585b142c3aafd95e92e4b";
    revisions = {
      r0 = {
        nix = import ../hackage/eventium-core-0.1.0-r0-c0c745b62f43510b1c9c37b0c32bd78308a66db5a960a3651d014d3902646d0b.nix;
        revNum = 0;
        sha256 = "c0c745b62f43510b1c9c37b0c32bd78308a66db5a960a3651d014d3902646d0b";
      };
      default = "r0";
    };
  };
  "0.2.1" = {
    sha256 = "a4a0507c3cf210862c105f69a387004c0f418964919173d9712202723f5f3071";
    revisions = {
      r0 = {
        nix = import ../hackage/eventium-core-0.2.1-r0-1d98f0c71f53a984bf6210c2b578dc65ab86a0e00cfd439adb8d2d3f144b471b.nix;
        revNum = 0;
        sha256 = "1d98f0c71f53a984bf6210c2b578dc65ab86a0e00cfd439adb8d2d3f144b471b";
      };
      default = "r0";
    };
  };
}