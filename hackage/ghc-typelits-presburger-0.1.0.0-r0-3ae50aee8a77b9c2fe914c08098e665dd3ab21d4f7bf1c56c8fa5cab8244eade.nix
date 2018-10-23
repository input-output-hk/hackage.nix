{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ghc-typelits-presburger";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2015 (c) Hiromi ISHII";
      maintainer = "konn.jinro _at_ gmail.com";
      author = "Hiromi ISHII";
      homepage = "https://github.com/konn/ghc-typelits-presburger#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "ghc-typelits-presburger" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc)
          (hsPkgs.ghc-tcplugins-extra)
          (hsPkgs.presburger)
          (hsPkgs.equational-reasoning)
          (hsPkgs.reflection)
        ];
      };
      exes = {
        "simple-arith" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ghc-typelits-presburger)
            (hsPkgs.equational-reasoning)
          ];
        };
      };
    };
  }