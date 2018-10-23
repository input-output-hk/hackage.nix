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
        name = "hmeap";
        version = "0.7";
      };
      license = "LicenseRef-GPL";
      copyright = "Rohan Drape, 2007-2009";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://slavepianos.org/rd/f/896678/";
      url = "";
      synopsis = "Haskell Meapsoft Parser";
      description = "Parser for the anaylsis files produced by the\nMeapsoft feature extractor.";
      buildType = "Simple";
    };
    components = {
      "hmeap" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-lexing)
          (hsPkgs.delimited-text)
          (hsPkgs.parsec)
        ];
      };
    };
  }