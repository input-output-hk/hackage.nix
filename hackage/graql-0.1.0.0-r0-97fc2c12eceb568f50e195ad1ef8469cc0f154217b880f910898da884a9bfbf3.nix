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
        name = "graql";
        version = "0.1.0.0";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "felix@grakn.ai";
      author = "Felix Chapman";
      homepage = "https://github.com/graknlabs/graql-haskell";
      url = "";
      synopsis = "Execute Graql queries on a Grakn graph";
      description = "A library for building and executing Graql queries on a\nGrakn knowledge graph.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.process)
          (hsPkgs.aeson)
          (hsPkgs.scientific)
          (hsPkgs.text)
          (hsPkgs.regex-posix)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.graql)
            (hsPkgs.hspec)
            (hsPkgs.text)
            (hsPkgs.markdown-unlit)
          ];
        };
      };
    };
  }