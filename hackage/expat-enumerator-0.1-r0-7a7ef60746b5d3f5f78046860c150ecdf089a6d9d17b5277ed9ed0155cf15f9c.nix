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
        name = "expat-enumerator";
        version = "0.1";
      };
      license = "MIT";
      copyright = "Copyright (c) John Millikin 2010";
      maintainer = "jmillikin@gmail.com";
      author = "John Millikin <jmillikin@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Enumerator-based API for Expat";
      description = "";
      buildType = "Simple";
    };
    components = {
      "expat-enumerator" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.enumerator)
          (hsPkgs.transformers)
          (hsPkgs.hexpat)
          (hsPkgs.xml-types)
        ];
      };
    };
  }