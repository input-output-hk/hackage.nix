{
  "0.1.0.3" = {
    sha256 = "8f694b3f0e537fe61ae4d9904d4200f0c4e0c4010583b6e25157a481e2d66a7d";
    revisions = {
      r0 = {
        nix = import ../hackage/pgstream-0.1.0.3-r0-26217cbd33f1fee1751b77c211a8f7d6f6f29d5bdc92675bd785c7caf3c10a5d.nix;
        revNum = 0;
        sha256 = "26217cbd33f1fee1751b77c211a8f7d6f6f29d5bdc92675bd785c7caf3c10a5d";
        };
      r1 = {
        nix = import ../hackage/pgstream-0.1.0.3-r1-6b08ae7064272e58cb3d6cd8df606d3d376de019febcffd042f8bbded7300426.nix;
        revNum = 1;
        sha256 = "6b08ae7064272e58cb3d6cd8df606d3d376de019febcffd042f8bbded7300426";
        };
      default = "r1";
      };
    };
  }