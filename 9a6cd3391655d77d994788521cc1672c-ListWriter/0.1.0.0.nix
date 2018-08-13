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
        name = "ListWriter";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2010 Yu Li";
      maintainer = "ylilarry@gmail.com";
      author = "Yu Li";
      homepage = "https://github.com/YLiLarry/ListWriter";
      url = "";
      synopsis = "define a list constant using Monadic syntax other than overhead [,]";
      description = "";
      buildType = "Simple";
    };
    components = {
      "ListWriter" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
        ];
      };
      tests = {
        "ListWriter-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ListWriter)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }