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
      specVersion = "1.18";
      identifier = { name = "mailtrap"; version = "0.1.2.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Daniel Casanueva (daniel.casanueva `at` proton.me)";
      author = "Daniel Casanueva (daniel.casanueva `at` proton.me)";
      homepage = "https://gitlab.com/daniel-casanueva/haskell/mailtrap";
      url = "";
      synopsis = "Mailtrap API library.";
      description = "Mailtrap API library. For more information,\nvisit [the repository](https://gitlab.com/daniel-casanueva/haskell/mailtrap).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."email-validate" or (errorHandler.buildDepError "email-validate"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mime-types" or (errorHandler.buildDepError "mime-types"))
          (hsPkgs."base64" or (errorHandler.buildDepError "base64"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."uuid-types" or (errorHandler.buildDepError "uuid-types"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      };
    }