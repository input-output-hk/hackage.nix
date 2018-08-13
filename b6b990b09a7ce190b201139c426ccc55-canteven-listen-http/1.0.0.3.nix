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
        name = "canteven-listen-http";
        version = "1.0.0.3";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "eglassercamp@sumall.com";
      author = "Ethan Glasser-Camp";
      homepage = "";
      url = "";
      synopsis = "data types to describe HTTP services";
      description = "A few datatypes useful for describing what ports an HTTP service listens on.";
      buildType = "Simple";
    };
    components = {
      "canteven-listen-http" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
        ];
      };
    };
  }