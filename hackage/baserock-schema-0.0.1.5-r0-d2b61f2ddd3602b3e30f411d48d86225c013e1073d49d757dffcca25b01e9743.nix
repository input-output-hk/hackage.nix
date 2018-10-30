{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "baserock-schema";
        version = "0.0.1.5";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Daniel Firth";
      maintainer = "locallycompact@gmail.com";
      author = "Daniel Firth";
      homepage = "";
      url = "";
      synopsis = "Baserock Definitions Schema";
      description = "Baserock Definitions Schema - Parsers, Printers, Encoders, Decoders, ASTs, Graphs and Traversals";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.algebraic-graphs)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.errors)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.turtle)
          (hsPkgs.unordered-containers)
          (hsPkgs.yaml)
        ];
      };
      exes = {
        "baserock" = {
          depends  = [
            (hsPkgs.algebraic-graphs)
            (hsPkgs.base)
            (hsPkgs.baserock-schema)
            (hsPkgs.bytestring)
            (hsPkgs.docopt)
            (hsPkgs.errors)
            (hsPkgs.gitlab-api)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.turtle)
            (hsPkgs.unordered-containers)
            (hsPkgs.yaml)
          ];
        };
      };
      tests = {
        "earthquake-test" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.algebraic-graphs)
            (hsPkgs.base)
            (hsPkgs.baserock-schema)
            (hsPkgs.bytestring)
            (hsPkgs.errors)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.turtle)
            (hsPkgs.unordered-containers)
            (hsPkgs.yaml)
          ];
        };
      };
    };
  }