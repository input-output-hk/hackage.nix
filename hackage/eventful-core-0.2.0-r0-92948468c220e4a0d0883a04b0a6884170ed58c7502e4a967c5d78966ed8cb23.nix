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
        name = "eventful-core";
        version = "0.2.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "David Reaver";
      author = "";
      homepage = "https://github.com/jdreaver/eventful#readme";
      url = "";
      synopsis = "Core module for eventful";
      description = "Core module for eventful";
      buildType = "Simple";
    };
    components = {
      "eventful-core" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.containers)
          (hsPkgs.contravariant)
          (hsPkgs.http-api-data)
          (hsPkgs.path-pieces)
          (hsPkgs.sum-type-boilerplate)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.uuid)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.containers)
            (hsPkgs.contravariant)
            (hsPkgs.http-api-data)
            (hsPkgs.path-pieces)
            (hsPkgs.sum-type-boilerplate)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.uuid)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }