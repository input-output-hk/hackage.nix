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
      specVersion = "2.4";
      identifier = { name = "bzip2-clib"; version = "1.0.8"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2024 Julian Ospald";
      maintainer = "Julian Ospald <hasufell@posteo.de>";
      author = "Julian Ospald <hasufell@posteo.de>";
      homepage = "";
      url = "";
      synopsis = "bzip2 C sources";
      description = "Bundled C sources for use with various bzip2 Haskell bindings.";
      buildType = "Simple";
    };
    components = { "library" = { buildable = true; }; };
  }