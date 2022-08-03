{
  "0.1" = {
    sha256 = "f4aafdeb017e742852f10945f665f0443e2068a85aa95aaaa78d9f8d15e0700e";
    revisions = {
      r0 = {
        nix = import ../hackage/optics-vl-0.1-r0-315c803e321182635ac073ad5ac0fe81401374a8d8c01983a90a60bb8c67516c.nix;
        revNum = 0;
        sha256 = "315c803e321182635ac073ad5ac0fe81401374a8d8c01983a90a60bb8c67516c";
        };
      r1 = {
        nix = import ../hackage/optics-vl-0.1-r1-a2d10809135762c3bbd51d88a123823334302fa0826276b086b8449c0a48a91b.nix;
        revNum = 1;
        sha256 = "a2d10809135762c3bbd51d88a123823334302fa0826276b086b8449c0a48a91b";
        };
      default = "r1";
      };
    };
  "0.2" = {
    sha256 = "dda8f7a4104cc4881e1194990d227d12bda4d8320c3e09993b9aaf91140ca63d";
    revisions = {
      r0 = {
        nix = import ../hackage/optics-vl-0.2-r0-dd23dc8a199cea562f69719daebd25ef09a59a7ab46613d2382b5263e06143c3.nix;
        revNum = 0;
        sha256 = "dd23dc8a199cea562f69719daebd25ef09a59a7ab46613d2382b5263e06143c3";
        };
      default = "r0";
      };
    };
  "0.2.1" = {
    sha256 = "bb946de3099304986a7bdc8f8a06917e7aeb9ff69f0762327e350acbc05433f7";
    revisions = {
      r0 = {
        nix = import ../hackage/optics-vl-0.2.1-r0-84f8b33cdad23dafad4c06cdf353093257f8fc965c5083694d32497a08c14f8d.nix;
        revNum = 0;
        sha256 = "84f8b33cdad23dafad4c06cdf353093257f8fc965c5083694d32497a08c14f8d";
        };
      r1 = {
        nix = import ../hackage/optics-vl-0.2.1-r1-ccaf2713358c6940294b0979df0246af9a03c1410cd559c0a86f68d9c874462d.nix;
        revNum = 1;
        sha256 = "ccaf2713358c6940294b0979df0246af9a03c1410cd559c0a86f68d9c874462d";
        };
      default = "r1";
      };
    };
  }