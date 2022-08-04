{
  "0.1.0" = {
    sha256 = "e85703bcac3695a4e74945253e7dc83574043567719f90540e88ed3deebfd367";
    revisions = {
      r0 = {
        nix = import ../hackage/HostAndPort-0.1.0-r0-6286c6349e711848361ddfbd0b4afdf6cc845ddb432359a0da21c551c3190dda.nix;
        revNum = 0;
        sha256 = "6286c6349e711848361ddfbd0b4afdf6cc845ddb432359a0da21c551c3190dda";
        };
      r1 = {
        nix = import ../hackage/HostAndPort-0.1.0-r1-5ad1783e80502877a1de17cb92308dd9e0cc003a1302c5d4c09103b1c98bd627.nix;
        revNum = 1;
        sha256 = "5ad1783e80502877a1de17cb92308dd9e0cc003a1302c5d4c09103b1c98bd627";
        };
      default = "r1";
      };
    };
  "0.2.0" = {
    sha256 = "15a625f5e0f1a510fa1a307127abae2ae2589d9525ff60ed33be39230f335be6";
    revisions = {
      r0 = {
        nix = import ../hackage/HostAndPort-0.2.0-r0-05f537153a06c34ad232bba6ca73ed20453fa73d1c8b28f7c695da3941ab0b00.nix;
        revNum = 0;
        sha256 = "05f537153a06c34ad232bba6ca73ed20453fa73d1c8b28f7c695da3941ab0b00";
        };
      default = "r0";
      };
    };
  }