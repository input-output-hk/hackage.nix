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
        name = "lazy-io-streams";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ltclifton@gmail.com";
      author = "Luke Clifton";
      homepage = "";
      url = "";
      synopsis = "Get lazy with your io-streams";
      description = "";
      buildType = "Simple";
    };
    components = {
      "lazy-io-streams" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.io-streams)
        ];
      };
    };
  }