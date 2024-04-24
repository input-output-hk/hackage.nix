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
  "2.0.1" = {
    sha256 = "e17ef43d5a8885a3551acd42efa3631d2eb765f0e43c39121bedf4738f2e735f";
    revisions = {
      r0 = {
        nix = import ../hackage/os-string-2.0.1-r0-d85f67067169a857cade9a09d269565d2231fb23e62540e4d8645e5fd93a45f6.nix;
        revNum = 0;
        sha256 = "d85f67067169a857cade9a09d269565d2231fb23e62540e4d8645e5fd93a45f6";
      };
      default = "r0";
    };
  };
  "2.0.2" = {
    sha256 = "0953126e962966719753c98d71f596f5fea07e100bce191b7453735a1ff2caa1";
    revisions = {
      r0 = {
        nix = import ../hackage/os-string-2.0.2-r0-32fa47f8345a2c0662fb602fc42e4b674e41ec48079b68bdecb4b6f68032c24e.nix;
        revNum = 0;
        sha256 = "32fa47f8345a2c0662fb602fc42e4b674e41ec48079b68bdecb4b6f68032c24e";
      };
      r1 = {
        nix = import ../hackage/os-string-2.0.2-r1-7357bdf979adcbfb8e33915f0c81fd32f28ff920d571096888610ebf12e1ae26.nix;
        revNum = 1;
        sha256 = "7357bdf979adcbfb8e33915f0c81fd32f28ff920d571096888610ebf12e1ae26";
      };
      default = "r1";
    };
  };
}