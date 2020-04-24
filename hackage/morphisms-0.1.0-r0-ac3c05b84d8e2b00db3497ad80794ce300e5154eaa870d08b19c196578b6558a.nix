{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "morphisms"; version = "0.1.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2018 Murat Kasimov";
      maintainer = "Murat Kasimov <iokasimov.m@gmail.com>";
      author = "Murat Kasimov";
      homepage = "https://github.com/iokasimov/morphisms";
      url = "";
      synopsis = "It's all about functions";
      description = "The bunch of function combinators, minimal set, zero dependency.";
      buildType = "Simple";
      };
    components = { "library" = { buildable = true; }; };
    }