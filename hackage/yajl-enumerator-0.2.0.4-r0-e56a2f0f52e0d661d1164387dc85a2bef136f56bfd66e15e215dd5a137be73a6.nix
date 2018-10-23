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
        name = "yajl-enumerator";
        version = "0.2.0.4";
      };
      license = "GPL-3.0-only";
      copyright = "Copyright (c) John Millikin 2010";
      maintainer = "jmillikin@gmail.com";
      author = "John Millikin <jmillikin@gmail.com>";
      homepage = "http://john-millikin.com/software/yajl-enumerator/";
      url = "";
      synopsis = "Enumerator-based interface to YAJL, an event-based JSON implementation";
      description = "";
      buildType = "Simple";
    };
    components = {
      "yajl-enumerator" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.enumerator)
          (hsPkgs.transformers)
          (hsPkgs.yajl)
        ];
      };
    };
  }