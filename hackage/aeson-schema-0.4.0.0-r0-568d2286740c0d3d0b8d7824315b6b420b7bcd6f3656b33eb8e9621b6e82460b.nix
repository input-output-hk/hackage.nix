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
      specVersion = "1.8";
      identifier = {
        name = "aeson-schema";
        version = "0.4.0.0";
      };
      license = "MIT";
      copyright = "(c) 2012-2015 Tim Baumann\n(c) 2015 Mateusz Kowalczyk";
      maintainer = "Mateusz Kowalczyk <fuuzetsu@fuuzetsu.co.uk>";
      author = "Tim Baumann, Mateusz Kowalczyk";
      homepage = "https://github.com/Fuuzetsu/aeson-schema";
      url = "";
      synopsis = "Haskell JSON schema validator and parser generator";
      description = "This library provides validation of JSON values against schemata. Given a schema, it can also produce data types corresponding to the schema and a parser.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.vector)
          (hsPkgs.text)
          (hsPkgs.regex-pcre)
          (hsPkgs.unordered-containers)
          (hsPkgs.containers)
          (hsPkgs.attoparsec)
          (hsPkgs.template-haskell)
          (hsPkgs.th-lift)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.QuickCheck)
          (hsPkgs.syb)
          (hsPkgs.bytestring)
          (hsPkgs.scientific)
          (hsPkgs.ghc-prim)
          (hsPkgs.regex-compat)
          (hsPkgs.regex-base)
        ];
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.containers)
            (hsPkgs.hashable)
            (hsPkgs.unordered-containers)
            (hsPkgs.aeson-schema)
            (hsPkgs.attoparsec)
            (hsPkgs.scientific)
            (hsPkgs.template-haskell)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.QuickCheck)
            (hsPkgs.bytestring)
            (hsPkgs.hint)
            (hsPkgs.temporary)
            (hsPkgs.mtl)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.regex-compat)
          ];
        };
      };
    };
  }