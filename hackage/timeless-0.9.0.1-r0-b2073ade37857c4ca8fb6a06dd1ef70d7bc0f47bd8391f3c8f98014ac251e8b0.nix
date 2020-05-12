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
      identifier = { name = "timeless"; version = "0.9.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "karl_1702@188.com";
      author = "Rongcui Dong";
      homepage = "https://github.com/carldong/timeless";
      url = "";
      synopsis = "An Arrow based Functional Reactive Programming library";
      description = "Timeless is based on a almost completely rewriten Netwire 5 core, plus numerous (not yet for now) extensions to provide an extensive library for Arrowrized Functional Reactive Programming with continuous time semantics.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          ];
        buildable = true;
        };
      };
    }