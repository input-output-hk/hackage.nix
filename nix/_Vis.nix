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
      r2 = {
        nix = import ../hackage/Vis-0.7.7.0-r2-b52217fc1e7ab330aba80d124f90f6ba7781561437e6a982982c7f2d3006f946.nix;
        revNum = 2;
        sha256 = "b52217fc1e7ab330aba80d124f90f6ba7781561437e6a982982c7f2d3006f946";
        };
      default = "r2";
      };
    };
  }