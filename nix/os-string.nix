{
  "1.0.0" = {
    sha256 = "2643df827f1b68a8db22307aa95ca7e3492d1cad868b8c0aca43aec710bad67e";
    revisions = {
      r0 = {
        nix = import ../hackage/os-string-1.0.0-r0-f1582da15c52761681da87d98c854a0db54049f34d59f74cfec4cc56ad8fbc05.nix;
        revNum = 0;
        sha256 = "f1582da15c52761681da87d98c854a0db54049f34d59f74cfec4cc56ad8fbc05";
        };
      default = "r0";
      };
    };
  "2.0.0" = {
    sha256 = "39ed0ed70f0e83bdfedabf3da862beab2c218a6d85737b1e8d9e08a232aca256";
    revisions = {
      r0 = {
        nix = import ../hackage/os-string-2.0.0-r0-bfa0343d162aafcff7d75cf704435551c5f304ae72aaf572d30c58e7ac1ddefa.nix;
        revNum = 0;
        sha256 = "bfa0343d162aafcff7d75cf704435551c5f304ae72aaf572d30c58e7ac1ddefa";
        };
      default = "r0";
      };
    };
  }