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
        name = "primitive-extras";
        version = "0.1.2.1";
      };
      license = "MIT";
      copyright = "(c) 2018, Metrix.AI";
      maintainer = "Metrix Ninjas <ninjas@metrix.ai>";
      author = "Metrix Ninjas <ninjas@metrix.ai>";
      homepage = "https://github.com/metrix-ai/primitive-extras";
      url = "";
      synopsis = "Extras for the \"primitive\" library";
      description = "";
      buildType = "Simple";
    };
    components = {
      "primitive-extras" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deferred-folds)
          (hsPkgs.foldl)
          (hsPkgs.primitive)
          (hsPkgs.profunctors)
        ];
      };
    };
  }