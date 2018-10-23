{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "attoparsec-arff";
        version = "0.0";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Paul Wilson <paul@statusfailed.com>";
      author = "Paul Wilson";
      homepage = "";
      url = "";
      synopsis = "An ARFF file parser using Attoparsec";
      description = "Parse ARFF files";
      buildType = "Simple";
    };
    components = {
      "attoparsec-arff" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
        ];
      };
    };
  }