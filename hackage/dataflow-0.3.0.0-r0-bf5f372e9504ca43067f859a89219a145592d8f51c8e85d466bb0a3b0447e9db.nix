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
      identifier = { name = "dataflow"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "oskar.wickstrom@live.com";
      author = "Oskar Wickström";
      homepage = "";
      url = "";
      synopsis = "Generate Graphviz documents from a Haskell representation.";
      description = "Outputs .dot files that can be processed by the dot\ncommand. Currently it only supports the DFD format.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }