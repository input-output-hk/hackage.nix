{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "scanf"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2018 Li-yao Xia";
      maintainer = "lysxia@gmail.com";
      author = "Li-yao Xia";
      homepage = "https://github.com/Lysxia/scanf#readme";
      url = "";
      synopsis = "Easy and type-safe format strings for parsing and printing";
      description = "A lightweight library for one-off parsing and printing.\n\nSee README.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.template-haskell) (hsPkgs.base) ]; };
      tests = {
        "example-test" = { depends = [ (hsPkgs.scanf) (hsPkgs.base) ]; };
        };
      };
    }