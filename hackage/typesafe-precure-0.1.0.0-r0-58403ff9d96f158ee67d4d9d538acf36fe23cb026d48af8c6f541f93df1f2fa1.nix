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
        name = "typesafe-precure";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Yuji Yamamoto";
      maintainer = "whosekiteneverfly@gmail.com";
      author = "Yuji Yamamoto";
      homepage = "https://github.com/igrep/typesafe-precure#readme";
      url = "";
      synopsis = "Type-safe transformations and purifications of PreCures (Japanese Battle Heroine)";
      description = "See README.md for details.";
      buildType = "Simple";
    };
    components = {
      "typesafe-precure" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.monad-skeleton)
          (hsPkgs.dlist)
          (hsPkgs.template-haskell)
        ];
      };
      tests = {
        "typesafe-precure-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.typesafe-precure)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }