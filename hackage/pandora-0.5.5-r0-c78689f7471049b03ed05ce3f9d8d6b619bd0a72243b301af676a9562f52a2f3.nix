{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pandora"; version = "0.5.5"; };
      license = "MIT";
      copyright = "Copyright (c) 2019 Murat Kasimov";
      maintainer = "Murat Kasimov <iokasimov.m@gmail.com>";
      author = "Murat Kasimov";
      homepage = "https://github.com/iokasimov/pandora";
      url = "";
      synopsis = "A box of patterns and paradigms";
      description = "Humble attempt to define a library for problem solving based on math abstractions.";
      buildType = "Simple";
    };
    components = { "library" = { buildable = true; }; };
  }