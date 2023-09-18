{
  "0.7.7.0" = {
    sha256 = "09c07a6130121f3622d91af0d33432189132c7b801aa62ece2449616183e53e3";
    revisions = {
      r0 = {
        nix = import ../hackage/Vis-0.7.7.0-r0-03054deb5d6d658f80b03d7671561fc5c3179df808fe0b2a04fed43ba7d6bb05.nix;
        revNum = 0;
        sha256 = "03054deb5d6d658f80b03d7671561fc5c3179df808fe0b2a04fed43ba7d6bb05";
        };
      r1 = {
        nix = import ../hackage/Vis-0.7.7.0-r1-677e4bf8410eaa5cf467c2db9f4e57c3c41533d6f212eceaa6cafd65cb790cdd.nix;
        revNum = 1;
        sha256 = "677e4bf8410eaa5cf467c2db9f4e57c3c41533d6f212eceaa6cafd65cb790cdd";
        };
      default = "r1";
      };
    };
  }