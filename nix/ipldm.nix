{
  "1.0.0.0" = {
    sha256 = "5624a75d99a3ad8f37f1665920a370ab6f58c834d7e06c9e614027bd82dfebce";
    revisions = {
      r0 = {
        nix = import ../hackage/ipldm-1.0.0.0-r0-f462e502b68d6f95d6841c6b895cd7d9503a9f688cf3b73fe98179fcc76426c8.nix;
        revNum = 0;
        sha256 = "f462e502b68d6f95d6841c6b895cd7d9503a9f688cf3b73fe98179fcc76426c8";
      };
      r1 = {
        nix = import ../hackage/ipldm-1.0.0.0-r1-5016cdec6741e1727b87c590986ecb17201205d0ced85cb3a2af35d39edcddef.nix;
        revNum = 1;
        sha256 = "5016cdec6741e1727b87c590986ecb17201205d0ced85cb3a2af35d39edcddef";
      };
      default = "r1";
    };
  };
}