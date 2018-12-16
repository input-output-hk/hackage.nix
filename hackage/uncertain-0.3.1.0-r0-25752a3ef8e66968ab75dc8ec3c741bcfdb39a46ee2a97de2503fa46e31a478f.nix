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
        name = "uncertain";
        version = "0.3.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Justin Le 2016";
      maintainer = "justin@jle.im";
      author = "Justin Le";
      homepage = "https://github.com/mstksg/uncertain";
      url = "";
      synopsis = "Manipulating numbers with inherent experimental/measurement uncertainty";
      description = "See <https://github.com/mstksg/uncertain/blob/master/README.md README.md>.\n\nDocumentation maintained at <https://mstksg.github.io/uncertain>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ad)
          (hsPkgs.containers)
          (hsPkgs.free)
          (hsPkgs.mwc-random)
          (hsPkgs.primitive)
          (hsPkgs.transformers)
          (hsPkgs.base-compat)
        ];
      };
    };
  }