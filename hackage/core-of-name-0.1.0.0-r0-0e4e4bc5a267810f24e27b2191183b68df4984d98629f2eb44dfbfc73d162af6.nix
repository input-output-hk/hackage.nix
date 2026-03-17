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
      identifier = { name = "core-of-name"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2026 Marco Zocca";
      maintainer = "ocramz";
      author = "Marco Zocca";
      homepage = "https://github.com/ocramz/ghc-plugin-core-of-name";
      url = "";
      synopsis = "Print the Core representation of a binding with a GHC plugin.";
      description = "GHC plugin that prints the Core representation of a given binding, either to the console or to a file. Useful for debugging and learning about GHC's Core language.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      exes = {
        "core-of-name" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."core-of-name" or (errorHandler.buildDepError "core-of-name"))
          ];
          buildable = true;
        };
      };
    };
  }