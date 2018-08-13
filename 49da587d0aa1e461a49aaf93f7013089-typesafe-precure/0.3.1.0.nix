{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "typesafe-precure";
        version = "0.3.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Yuji Yamamoto";
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
          (hsPkgs.autoexporter)
          (hsPkgs.monad-skeleton)
          (hsPkgs.dlist)
          (hsPkgs.template-haskell)
          (hsPkgs.th-data-compat)
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