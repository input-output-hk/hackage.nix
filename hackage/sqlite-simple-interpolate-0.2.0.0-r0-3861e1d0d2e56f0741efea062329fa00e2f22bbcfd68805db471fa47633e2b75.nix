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
    flags = { tests = true; };
    package = {
      specVersion = "3.0";
      identifier = { name = "sqlite-simple-interpolate"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ruby0b";
      author = "ruby0b";
      homepage = "https://github.com/ruby0b/sqlite-simple-interpolate";
      url = "";
      synopsis = "Interpolated SQLite queries via quasiquotation";
      description = "Please see the readme at https://github.com/ruby0b/sqlite-simple-interpolate#readme.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."custom-interpolation" or (errorHandler.buildDepError "custom-interpolation"))
          (hsPkgs."sqlite-simple" or (errorHandler.buildDepError "sqlite-simple"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      tests = {
        "sqlite-simple-interpolate-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sqlite-simple" or (errorHandler.buildDepError "sqlite-simple"))
            (hsPkgs."sqlite-simple-interpolate" or (errorHandler.buildDepError "sqlite-simple-interpolate"))
          ];
          buildable = if !flags.tests then false else true;
        };
      };
    };
  }