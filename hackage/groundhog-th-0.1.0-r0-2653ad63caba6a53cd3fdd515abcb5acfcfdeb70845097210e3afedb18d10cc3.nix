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
      specVersion = "1.6";
      identifier = {
        name = "groundhog-th";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Boris Lykah <lykahb@gmail.com>";
      author = "Boris Lykah <lykahb@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Type-safe ADT-database mapping library.";
      description = "This library helps to generate boilerplate for Groundhog datatypes";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.groundhog)
          (hsPkgs.template-haskell)
          (hsPkgs.time)
          (hsPkgs.containers)
          (hsPkgs.yaml)
        ];
      };
    };
  }