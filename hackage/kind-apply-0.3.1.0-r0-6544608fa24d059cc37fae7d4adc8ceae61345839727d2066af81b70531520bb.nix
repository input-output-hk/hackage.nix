{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "kind-apply"; version = "0.3.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "trupill@gmail.com";
      author = "Alejandro Serrano";
      homepage = "";
      url = "";
      synopsis = "Utilities to work with lists of types";
      description = "This packages reifies the concept of list of types, and application of those to list constructors.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }