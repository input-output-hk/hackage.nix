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
        name = "versioning";
        version = "0.3.0.0";
      };
      license = "Apache-2.0";
      copyright = "(c) 2018 Lorenzo Tabacchini";
      maintainer = "lortabac@gmx.com";
      author = "Lorenzo Tabacchini";
      homepage = "https://github.com/lortabac/versioning";
      url = "";
      synopsis = "Type-safe data versioning.";
      description = "This package provides various tools to deal with\ndata versioning in a type-safe way.";
      buildType = "Simple";
    };
    components = {
      "versioning" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.semigroupoids)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.versioning)
          ];
        };
      };
    };
  }