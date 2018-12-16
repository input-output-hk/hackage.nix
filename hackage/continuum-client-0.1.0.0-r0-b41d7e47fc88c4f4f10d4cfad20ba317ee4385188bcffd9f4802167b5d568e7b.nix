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
      specVersion = "1.10";
      identifier = {
        name = "continuum-client";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "alexp@coffeenco.de";
      author = "Alex Petrov";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Continuum Database Client";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.nanomsg-haskell)
          (hsPkgs.time)
          (hsPkgs.mtl)
        ];
      };
    };
  }