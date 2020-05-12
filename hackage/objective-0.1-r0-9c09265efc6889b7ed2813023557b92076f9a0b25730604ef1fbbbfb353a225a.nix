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
      identifier = { name = "objective"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
      author = "Fumiaki Kinoshita";
      homepage = "https://github.com/fumieval/objective";
      url = "";
      synopsis = "Extensible objects";
      description = "Stateful effect transducer";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."trivia" or (errorHandler.buildDepError "trivia"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }