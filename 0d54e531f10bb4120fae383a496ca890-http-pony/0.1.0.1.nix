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
        name = "http-pony";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nfjinjing@gmail.com";
      author = "Jinjing Wang";
      homepage = "https://github.com/nfjinjing/http-pony";
      url = "";
      synopsis = "A type unsafe http library";
      description = "";
      buildType = "Simple";
    };
    components = {
      "http-pony" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.network)
          (hsPkgs.pipes)
          (hsPkgs.pipes-attoparsec)
          (hsPkgs.pipes-network)
          (hsPkgs.pipes-parse)
          (hsPkgs.pipes-safe)
          (hsPkgs.transformers)
        ];
      };
    };
  }