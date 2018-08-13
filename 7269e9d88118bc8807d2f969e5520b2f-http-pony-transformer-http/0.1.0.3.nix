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
        name = "http-pony-transformer-http";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nfjinjing@gmail.com";
      author = "Jinjing Wang";
      homepage = "";
      url = "";
      synopsis = "Transform raw TCP stream to a basic HTTP type";
      description = "";
      buildType = "Simple";
    };
    components = {
      "http-pony-transformer-http" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.pipes)
          (hsPkgs.transformers)
          (hsPkgs.attoparsec)
          (hsPkgs.pipes-attoparsec)
        ];
      };
    };
  }