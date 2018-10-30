{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      development = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "queryparser-presto";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "heli@uber.com";
      author = "Heli Wang, David Thomas, Matt Halverson";
      homepage = "";
      url = "";
      synopsis = "Parsing for Presto SQL queries";
      description = "A library for parsing Presto SQL queries into analyzable ASTs.\n\nThis library is to be used with the queryparser library, which\nprovides the common type definitions and analyses across the\ndifferent SQL dialects.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.queryparser)
          (hsPkgs.containers)
          (hsPkgs.semigroups)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.pretty)
          (hsPkgs.aeson)
          (hsPkgs.yaml)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashable)
          (hsPkgs.QuickCheck)
          (hsPkgs.regex-tdfa)
          (hsPkgs.fixed-list)
          (hsPkgs.predicate-class)
        ];
      };
    };
  }