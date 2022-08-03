{
  "0.1" = {
    sha256 = "f68b736adf9cea2b88c7e7e87b7a8f3bb47d99a81cb12687cf2522ffde65de18";
    revisions = {
      r0 = {
        nix = import ../hackage/defargs-0.1-r0-90f4345719b8bf94d4c5e45c83432bb75dcf2f849c5a9cbb3c71e5ed03fad14b.nix;
        revNum = 0;
        sha256 = "90f4345719b8bf94d4c5e45c83432bb75dcf2f849c5a9cbb3c71e5ed03fad14b";
        };
      r1 = {
        nix = import ../hackage/defargs-0.1-r1-d863e2fed6af3485cdcc5ea33830a1b30aa8483299d8404d2ec988ccae2bffa3.nix;
        revNum = 1;
        sha256 = "d863e2fed6af3485cdcc5ea33830a1b30aa8483299d8404d2ec988ccae2bffa3";
        };
      default = "r1";
      };
    };
  "0.2" = {
    sha256 = "003865284533c102d346731660b8722ee4f8585a1035027f2e574b5ac2534812";
    revisions = {
      r0 = {
        nix = import ../hackage/defargs-0.2-r0-a2bf728716280d2f2dc0c5176d14103c2f50baf3f46b36f4ba40c04b3a4412ad.nix;
        revNum = 0;
        sha256 = "a2bf728716280d2f2dc0c5176d14103c2f50baf3f46b36f4ba40c04b3a4412ad";
        };
      default = "r0";
      };
    };
  "0.3" = {
    sha256 = "6f32a30b2b10a793a2807faf15324ad92cbc9c6564fbabc900517235103fe3e7";
    revisions = {
      r0 = {
        nix = import ../hackage/defargs-0.3-r0-2140763faae3b775c7757386784f019081071ba7a60f2d8cd14af04c5ba3b889.nix;
        revNum = 0;
        sha256 = "2140763faae3b775c7757386784f019081071ba7a60f2d8cd14af04c5ba3b889";
        };
      default = "r0";
      };
    };
  }