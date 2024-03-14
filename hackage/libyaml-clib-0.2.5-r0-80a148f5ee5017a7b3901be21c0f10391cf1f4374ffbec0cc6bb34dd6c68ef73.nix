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
      specVersion = "2.2";
      identifier = { name = "libyaml-clib"; version = "0.2.5"; };
      license = "MIT";
      copyright = "";
      maintainer = "Julian Ospald <hasufell@posteo.de>";
      author = "Julian Ospald <hasufell@posteo.de>";
      homepage = "https://github.com/hasufell/streamly-yaml#readme";
      url = "";
      synopsis = "libyaml clibs";
      description = "libyaml C source code for yaml bindings";
      buildType = "Simple";
      };
    components = { "library" = { buildable = true; }; };
    }