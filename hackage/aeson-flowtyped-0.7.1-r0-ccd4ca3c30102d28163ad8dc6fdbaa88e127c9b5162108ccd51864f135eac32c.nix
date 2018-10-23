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
        name = "aeson-flowtyped";
        version = "0.7.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mike@quasimal.com";
      author = "Mike Ledger <mike@quasimal.com>";
      homepage = "";
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
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.containers)
          (hsPkgs.reflection)
          (hsPkgs.wl-pprint)
          (hsPkgs.free)
          (hsPkgs.scientific)
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
            (hsPkgs.aeson-flowtyped)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
    };
  }