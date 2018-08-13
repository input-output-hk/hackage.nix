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
      specVersion = "1.6";
      identifier = {
        name = "hmeap";
        version = "0.8";
      };
      license = "LicenseRef-GPL";
      copyright = "Rohan Drape, 2007-2010";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://slavepianos.org/rd/?t=hmeap";
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