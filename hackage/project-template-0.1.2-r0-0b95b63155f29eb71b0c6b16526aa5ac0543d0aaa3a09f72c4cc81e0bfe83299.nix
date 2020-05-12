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
      specVersion = "1.8";
      identifier = { name = "project-template"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael@fpcomplete.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/fpco/haskell-ide";
      url = "";
      synopsis = "Specify Haskell project templates and generate files";
      description = "See initial blog post for explanation: <http://www.yesodweb.com/blog/2012/09/project-templates>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."classy-prelude-conduit" or (errorHandler.buildDepError "classy-prelude-conduit"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."base64-conduit" or (errorHandler.buildDepError "base64-conduit"))
          (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
          (hsPkgs."system-fileio" or (errorHandler.buildDepError "system-fileio"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."project-template" or (errorHandler.buildDepError "project-template"))
            (hsPkgs."classy-prelude-conduit" or (errorHandler.buildDepError "classy-prelude-conduit"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }