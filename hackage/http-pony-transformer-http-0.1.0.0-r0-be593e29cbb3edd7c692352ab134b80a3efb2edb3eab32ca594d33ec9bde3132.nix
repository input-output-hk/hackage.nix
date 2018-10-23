{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "http-pony-transformer-http";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nfjinjing@gmail.com";
      author = "Jinjing Wang";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Transform to a basic HTTP interface";
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