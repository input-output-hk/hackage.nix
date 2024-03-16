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
      specVersion = "1.12";
      identifier = { name = "looksee-trip"; version = "0.6.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2023 Eric Conlon";
      maintainer = "ejconlon@gmail.com";
      author = "Eric Conlon";
      homepage = "https://github.com/ejconlon/looksee#readme";
      url = "";
      synopsis = "A simple text parser with decent errors";
      description = "Please see the README on GitHub at <https://github.com/ejconlon/looksee#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."daytripper" or (errorHandler.buildDepError "daytripper"))
          (hsPkgs."looksee" or (errorHandler.buildDepError "looksee"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }