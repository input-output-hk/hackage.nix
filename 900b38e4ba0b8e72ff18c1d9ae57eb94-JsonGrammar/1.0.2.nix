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
      specVersion = "1.8";
      identifier = {
        name = "JsonGrammar";
        version = "1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Some Rights Reserved (CC) 2010-2014 Martijn van Steenbergen";
      maintainer = "martijn@van.steenbergen.nl";
      author = "Martijn van Steenbergen";
      homepage = "https://github.com/MedeaMelana/JsonGrammar2";
      url = "";
      synopsis = "Combinators for bidirectional JSON parsing";
      description = "Combinators for bidirectional JSON parsing";
      buildType = "Simple";
    };
    components = {
      "JsonGrammar" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.semigroups)
          (hsPkgs.language-typescript)
          (hsPkgs.mtl)
          (hsPkgs.stack-prism)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.hashable)
          (hsPkgs.text)
          (hsPkgs.template-haskell)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.JsonGrammar)
            (hsPkgs.stack-prism)
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.language-typescript)
            (hsPkgs.text)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }