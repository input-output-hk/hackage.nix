{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "cakyrespa";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "";
      homepage = "";
      url = "";
      synopsis = "run turtle like LOGO with lojban";
      description = "run turtle like LOGO with lojban\n\nThis is alpha version.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cakyrespa" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.lojbanParser)
            (hsPkgs.gluturtle)
            (hsPkgs.GLUT)
          ];
        };
      };
    };
  }