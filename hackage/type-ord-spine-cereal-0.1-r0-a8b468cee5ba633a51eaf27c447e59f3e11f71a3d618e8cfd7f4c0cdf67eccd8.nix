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
      specVersion = "1.6";
      identifier = { name = "type-ord-spine-cereal"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Nicolas Frisby <nicolas.frisby@gmail.com>";
      author = "Nicolas Frisby <nicolas.frisby@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Generic type-level comparison of types";
      description = "Generic type-level comparison of @type-spine@- and\n@type-cereal@-enabled types.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."type-spine" or (errorHandler.buildDepError "type-spine"))
          (hsPkgs."type-cereal" or (errorHandler.buildDepError "type-cereal"))
          (hsPkgs."type-ord" or (errorHandler.buildDepError "type-ord"))
          ];
        buildable = true;
        };
      };
    }