{
  "0.1.0.0" = {
    sha256 = "1155849c2c65712a9d53be54ea70fe0f6f9181e9dd2d66b451a06709e2f3c4ce";
    revisions = {
      r0 = {
        nix = import ../hackage/rrb-vector-0.1.0.0-r0-ce58a67119515c7f97e5faa30269c4bc3bea96930213141c423b3dc495217cdd.nix;
        revNum = 0;
        sha256 = "ce58a67119515c7f97e5faa30269c4bc3bea96930213141c423b3dc495217cdd";
        };
      r1 = {
        nix = import ../hackage/rrb-vector-0.1.0.0-r1-9f4d42e5048082e793baa401e2906d12309c8bfd4b3c9c137e4d3a3c7b05bdf9.nix;
        revNum = 1;
        sha256 = "9f4d42e5048082e793baa401e2906d12309c8bfd4b3c9c137e4d3a3c7b05bdf9";
        };
      default = "r1";
      };
    };
  "0.1.1.0" = {
    sha256 = "72ecac8e04a6041432905891d945264a627511bdbec8ca342dbfd38951e8972b";
    revisions = {
      r0 = {
        nix = import ../hackage/rrb-vector-0.1.1.0-r0-49af83ee5c21a7b57fbc0bc4127f9d633dfdaf788538f62b933a3681b5194c4f.nix;
        revNum = 0;
        sha256 = "49af83ee5c21a7b57fbc0bc4127f9d633dfdaf788538f62b933a3681b5194c4f";
        };
      default = "r0";
      };
    };
  "0.2.0.0" = {
    sha256 = "1d781d20e792ffb6062c332475242f35ee1506fefde81507e1d7fadfd271959e";
    revisions = {
      r0 = {
        nix = import ../hackage/rrb-vector-0.2.0.0-r0-8ba01a45ccde13b7679633141b05b552cdacdaef2c6e34c3aae3f91e06ac3a59.nix;
        revNum = 0;
        sha256 = "8ba01a45ccde13b7679633141b05b552cdacdaef2c6e34c3aae3f91e06ac3a59";
        };
      default = "r0";
      };
    };
  }