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
        name = "yajl-enumerator";
        version = "0.4.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "John Millikin <jmillikin@gmail.com>";
      author = "John Millikin <jmillikin@gmail.com>";
      homepage = "https://john-millikin.com/software/haskell-yajl/";
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
          (hsPkgs.json-types)
        ];
      };
    };
  }