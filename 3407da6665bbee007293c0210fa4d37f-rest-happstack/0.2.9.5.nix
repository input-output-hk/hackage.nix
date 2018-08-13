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
      specVersion = "1.8";
      identifier = {
        name = "rest-happstack";
        version = "0.2.9.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "code@silk.co";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Rest driver for Happstack.";
      description = "Rest driver for Happstack.";
      buildType = "Simple";
    };
    components = {
      "rest-happstack" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.happstack-server)
          (hsPkgs.mtl)
          (hsPkgs.rest-types)
          (hsPkgs.transformers)
          (hsPkgs.utf8-string)
          (hsPkgs.rest-core)
        ];
      };
    };
  }