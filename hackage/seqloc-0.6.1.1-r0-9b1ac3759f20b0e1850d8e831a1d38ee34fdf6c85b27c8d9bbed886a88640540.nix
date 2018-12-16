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
      specVersion = "1.14";
      identifier = {
        name = "seqloc";
        version = "0.6.1.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "nick@ingolia.org";
      author = "Nick Ingolia";
      homepage = "http://www.ingolia-lab.org/seqloc-tutorial.html";
      url = "";
      synopsis = "Handle sequence locations for bioinformatics";
      description = "Handle sequence locations for bioinformatics";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.attoparsec)
          (hsPkgs.biocore)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.hashable)
        ];
      };
      tests = {
        "test-seqloc" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.attoparsec)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.biocore)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.hashable)
          ];
        };
      };
    };
  }