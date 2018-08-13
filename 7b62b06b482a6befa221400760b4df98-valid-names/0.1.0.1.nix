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
        name = "valid-names";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "me@joelt.io";
      author = "Joel Taylor";
      homepage = "https://i.joelt.io/symbols.html";
      url = "";
      synopsis = "Valid operator/module characters";
      description = "Produce or check valid Haskell names.";
      buildType = "Simple";
    };
    components = {
      "valid-names" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.MonadRandom)
        ];
      };
    };
  }