{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "HXQ";
        version = "0.5";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "fegaras@cse.uta.edu";
      author = "Leonidas Fegaras";
      homepage = "http://lambda.uta.edu/HXQ/";
      url = "";
      synopsis = "A Compiler from XQuery to Haskell";
      description = "A Compiler from XQuery to Haskell";
      buildType = "Simple";
    };
    components = {
      exes = {
        "xquery" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.template-haskell)
          ];
        };
      };
    };
  }