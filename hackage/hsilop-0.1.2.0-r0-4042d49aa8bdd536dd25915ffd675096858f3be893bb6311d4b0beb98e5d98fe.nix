{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hsilop";
        version = "0.1.2.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "micheleguerinirocco@me.com";
      author = "rnhmjoj";
      homepage = "https://github.com/Rnhmjoj/hsilop";
      url = "";
      synopsis = "RPN calculator";
      description = "ʜƨiloꟼ is a simple reverse polish notation calculator\nwith haskeline line editing capabilites.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hsilop" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskeline)
          ];
        };
      };
    };
  }