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
      identifier = { name = "prints"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Evan Turner";
      maintainer = "ev <ev@evturn.com>";
      author = "Evan Turner";
      homepage = "https://github.com/evturn/prints";
      url = "https://github.com/evturn/prints.git";
      synopsis = "The Artist Formerly Known as Prints";
      description = "In 1993, in rebellion against Warner Bros., which refused\nto release Prince's enormous backlog of music at a steady\npace, he changed his name to an unpronounceable symbol.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hscolour" or (errorHandler.buildDepError "hscolour"))
          (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
          (hsPkgs."pretty-simple" or (errorHandler.buildDepError "pretty-simple"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }