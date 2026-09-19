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
    flags = { sdl = false; };
    package = {
      specVersion = "3.4";
      identifier = { name = "nano-ui-form"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "zacharyachurchill@gmail.com";
      author = "goolord";
      homepage = "https://github.com/goolord/nano-ui";
      url = "";
      synopsis = "Validated forms for nano-ui, built on ditto";
      description = "Applicative forms whose inputs are nano-ui widgets, with validation errors\nshown under each field.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ditto" or (errorHandler.buildDepError "ditto"))
          (hsPkgs."effectful-core" or (errorHandler.buildDepError "effectful-core"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."nano-ui" or (errorHandler.buildDepError "nano-ui"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      exes = {
        "nano-ui-form-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ditto" or (errorHandler.buildDepError "ditto"))
            (hsPkgs."nano-ui" or (errorHandler.buildDepError "nano-ui"))
            (hsPkgs."nano-ui-form" or (errorHandler.buildDepError "nano-ui-form"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ pkgs.lib.optional (flags.sdl) (hsPkgs."nano-ui-sdl" or (errorHandler.buildDepError "nano-ui-sdl"));
          buildable = if !flags.sdl then false else true;
        };
      };
      tests = {
        "nano-ui-form-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ditto" or (errorHandler.buildDepError "ditto"))
            (hsPkgs."nano-ui" or (errorHandler.buildDepError "nano-ui"))
            (hsPkgs."nano-ui-form" or (errorHandler.buildDepError "nano-ui-form"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }