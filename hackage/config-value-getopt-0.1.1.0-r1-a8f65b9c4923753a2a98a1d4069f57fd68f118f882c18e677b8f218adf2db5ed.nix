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
        name = "config-value-getopt";
        version = "0.1.1.0";
      };
      license = "MIT";
      copyright = "2016 Galois, Inc.";
      maintainer = "emertens@galois.com";
      author = "Eric Mertens";
      homepage = "https://github.com/GaloisInc/config-value-getopt";
      url = "";
      synopsis = "Interface between config-value and System.GetOpt";
      description = "This package allows to set command line configuration\noptions from a file using the config-value syntax.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.config-value)
        ];
      };
    };
  }