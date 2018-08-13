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
      specVersion = "1.10";
      identifier = {
        name = "http-pony-serve-wai";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nfjinjing@gmail.com";
      author = "Jinjing Wang";
      homepage = "";
      url = "";
      synopsis = "Serve a WAI application with http-pony";
      description = "";
      buildType = "Simple";
    };
    components = {
      "http-pony-serve-wai" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.http-types)
          (hsPkgs.network)
          (hsPkgs.pipes)
          (hsPkgs.pipes-bytestring)
          (hsPkgs.transformers)
          (hsPkgs.wai)
        ];
      };
    };
  }