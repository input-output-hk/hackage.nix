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
        name = "nicify";
        version = "1.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      author = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      homepage = "";
      url = "";
      synopsis = "Pretty print the standard output of show for algebraic datatypes";
      description = "Pretty print the standard output of show for algebraic datatypes";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "nicify" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.nicify)
            (hsPkgs.parsec)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }