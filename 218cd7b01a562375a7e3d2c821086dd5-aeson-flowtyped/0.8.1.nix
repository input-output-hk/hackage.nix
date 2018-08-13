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
        name = "aeson-flowtyped";
        version = "0.8.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mike@quasimal.com";
      author = "Mike Ledger <mike@quasimal.com>";
      homepage = "https://github.com/mikeplus64/aeson-flowtyped#readme";
      url = "";
      synopsis = "Create Flow type definitions from Haskell data types.";
      description = "Create Flow type definitions from Haskell data types.";
      buildType = "Simple";
    };
    components = {
      "aeson-flowtyped" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.vector)
          (hsPkgs.text)
          (hsPkgs.recursion-schemes)
          (hsPkgs.containers)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.reflection)
          (hsPkgs.wl-pprint)
          (hsPkgs.free)
          (hsPkgs.scientific)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "aeson-flowtyped" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.vector)
            (hsPkgs.text)
            (hsPkgs.recursion-schemes)
            (hsPkgs.containers)
            (hsPkgs.aeson-flowtyped)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }