{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "rest-happstack";
        version = "0.2.9.9";
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
      "library" = {
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