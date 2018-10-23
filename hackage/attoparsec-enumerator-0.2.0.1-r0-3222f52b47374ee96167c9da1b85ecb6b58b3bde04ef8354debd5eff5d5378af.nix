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
        name = "attoparsec-enumerator";
        version = "0.2.0.1";
      };
      license = "MIT";
      copyright = "Copyright (c) John Millikin 2010";
      maintainer = "jmillikin@gmail.com";
      author = "John Millikin <jmillikin@gmail.com>";
      homepage = "http://john-millikin.com/software/attoparsec-enumerator/";
      url = "";
      synopsis = "Convert an Attoparsec parser into an iteratee";
      description = "";
      buildType = "Simple";
    };
    components = {
      "attoparsec-enumerator" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.enumerator)
        ];
      };
    };
  }