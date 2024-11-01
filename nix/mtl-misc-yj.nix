{
  "0.1.0.1" = {
    sha256 = "3de41b4794486b3e28c79a032c653e069e97492d5d8d61908cbc0d4ccf7509bc";
    revisions = {
      r0 = {
        nix = import ../hackage/mtl-misc-yj-0.1.0.1-r0-6de7d1c523f9e1114f28eb4043c0e06d2cec1a03bd2bd346de335cf052259e21.nix;
        revNum = 0;
        sha256 = "6de7d1c523f9e1114f28eb4043c0e06d2cec1a03bd2bd346de335cf052259e21";
      };
      r1 = {
        nix = import ../hackage/mtl-misc-yj-0.1.0.1-r1-497e39aa4e71fca0832bc5f55423ee44f14f33d9c94344e7df2d4c0a6b89c082.nix;
        revNum = 1;
        sha256 = "497e39aa4e71fca0832bc5f55423ee44f14f33d9c94344e7df2d4c0a6b89c082";
      };
      default = "r1";
    };
  };
}