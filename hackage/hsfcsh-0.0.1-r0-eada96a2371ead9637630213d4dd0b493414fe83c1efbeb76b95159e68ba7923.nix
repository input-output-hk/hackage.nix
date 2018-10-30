{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hsfcsh";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "shumovichy@gmail.com";
      author = "Yuras Shumovich";
      homepage = "https://github.com/Yuras/hsfcsh";
      url = "";
      synopsis = "Incremental builder for flash";
      description = "It is a wrapper around fcsh. It allows to build flash/flex project incrementally. Can be used from Makefile";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hsfcsh" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hslogger)
            (hsPkgs.hdaemonize)
            (hsPkgs.process)
            (hsPkgs.network)
          ];
        };
        "hsfcsh_do" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hslogger)
            (hsPkgs.hdaemonize)
            (hsPkgs.process)
            (hsPkgs.network)
          ];
        };
      };
    };
  }