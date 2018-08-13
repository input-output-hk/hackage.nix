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
        name = "hakka";
        version = "0.2.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "martin.ring@dfki.de";
      author = "Martin Ring";
      homepage = "";
      url = "";
      synopsis = "Minimal akka-inspired actor library";
      description = "Minimal akka-inspired actor library";
      buildType = "Simple";
    };
    components = {
      "hakka" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "hakka-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hakka)
          ];
        };
      };
    };
  }