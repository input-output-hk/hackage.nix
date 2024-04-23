{
  "0.1.1.1" = {
    sha256 = "96335f430fc86e9faf996b1c95215ed3d2f975540abb81887b76f28bf7e85f6e";
    revisions = {
      r0 = {
        nix = import ../hackage/monadlog-0.1.1.1-r0-28a5f644405625e64de3ecb0d87e486e5a936d044924b0ccb0ff0ba3bfe16b1f.nix;
        revNum = 0;
        sha256 = "28a5f644405625e64de3ecb0d87e486e5a936d044924b0ccb0ff0ba3bfe16b1f";
      };
      r1 = {
        nix = import ../hackage/monadlog-0.1.1.1-r1-85d5184c759c8af8f9617c93b4d539a2291bcca236b76eda475301ee61b6b556.nix;
        revNum = 1;
        sha256 = "85d5184c759c8af8f9617c93b4d539a2291bcca236b76eda475301ee61b6b556";
      };
      default = "r1";
    };
  };
}