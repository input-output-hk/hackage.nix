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
      specVersion = "3.12";
      identifier = { name = "haskell-debugger-view"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "matthewtpickering@gmail.com, rodrigo@well-typed.com";
      author = "Matthew Pickering, Rodrigo Mesquita";
      homepage = "";
      url = "";
      synopsis = "Custom debug visualization instances for @haskell-debugger@";
      description = "This package provides a class to implement custom debug visualization\ninstances for user-defined datatypes, which will be discovered and used by\n@haskell-debugger@ when debugging a program. Additionally, it provides a\nhandful of built-in custom visualizations, such as for @String@ and @IntMap@.\nThe custom debug visualizations are displayed in the editor when inspecting\na variable or evaluation result. The @'DebugView'@ class is the class for\nwhich an instance must be provided, and allows one to customize what is\ndisplayed inline and what fields are available when expanding it.\nSee the haddocks of @'GHC.Debugger.View.Class'@ for further information.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
    };
  }