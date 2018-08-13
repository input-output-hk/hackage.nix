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
        name = "radius";
        version = "0.5.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Erick Gonzalez";
      maintainer = "erick@codemonkeylabs.de";
      author = "Erick Gonzalez";
      homepage = "https://gitlab.com/codemonkeylabs/radius#readme";
      url = "";
      synopsis = "Remote Authentication Dial In User Service (RADIUS)";
      description = "This module provides types and on the wire de/coding of RADIUS packets as per RFC2865";
      buildType = "Simple";
    };
    components = {
      "radius" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.cryptonite)
          (hsPkgs.iproute)
          (hsPkgs.memory)
        ];
      };
    };
  }