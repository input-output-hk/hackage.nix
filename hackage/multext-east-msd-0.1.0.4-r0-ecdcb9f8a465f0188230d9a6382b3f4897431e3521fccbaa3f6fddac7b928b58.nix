{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "multext-east-msd"; version = "0.1.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jan.snajder@fer.hr";
      author = "Jan Snajder";
      homepage = "http://github.com/jsnajder/multex-east-msd";
      url = "";
      synopsis = "MULTEXT-East morphosyntactic descriptors";
      description = "Implementation of the MULTEXT-East morphosyntactic descriptors.\nMULTEXT-East encodes values of morphosyntatic attributes in a single string,\nusing positional encoding. For details, refer to <http://nl.ijs.si/ME>.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }