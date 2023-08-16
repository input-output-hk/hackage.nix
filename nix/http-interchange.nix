{
  "0.1.0.0" = {
    sha256 = "a019286733a987223a60085bb5d57750e346186d7eca3bce4153d9eb0ab547d5";
    revisions = {
      r0 = {
        nix = import ../hackage/http-interchange-0.1.0.0-r0-14bedb6d69ad88b5154bf602fac42f1d7cffc7d8745a06cde4c89af035537107.nix;
        revNum = 0;
        sha256 = "14bedb6d69ad88b5154bf602fac42f1d7cffc7d8745a06cde4c89af035537107";
        };
      default = "r0";
      };
    };
  "0.2.0.0" = {
    sha256 = "dfd20c4073a9726761fa110a25cbf0fc478c1d8dae4a5bff84d8defdc3f9ca1e";
    revisions = {
      r0 = {
        nix = import ../hackage/http-interchange-0.2.0.0-r0-090cb5d5cae63d833b830d2bb44d2e9ceba3d18bdef69e3b29455fa1e90dcb24.nix;
        revNum = 0;
        sha256 = "090cb5d5cae63d833b830d2bb44d2e9ceba3d18bdef69e3b29455fa1e90dcb24";
        };
      r1 = {
        nix = import ../hackage/http-interchange-0.2.0.0-r1-33f5ccbb9ac14209b7f7e791466d0c21f22a1cc4dcfb9054238aa69753d62f2d.nix;
        revNum = 1;
        sha256 = "33f5ccbb9ac14209b7f7e791466d0c21f22a1cc4dcfb9054238aa69753d62f2d";
        };
      default = "r1";
      };
    };
  "0.3.0.0" = {
    sha256 = "a13bd20621436be72e533003cf8d9d2499464689a5474b2001b2e2931f30d1fc";
    revisions = {
      r0 = {
        nix = import ../hackage/http-interchange-0.3.0.0-r0-99eb36ac2218fa05cc7c580a652597412d0ac14d162bcdd96f9e333b999be53e.nix;
        revNum = 0;
        sha256 = "99eb36ac2218fa05cc7c580a652597412d0ac14d162bcdd96f9e333b999be53e";
        };
      default = "r0";
      };
    };
  }