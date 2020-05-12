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
    flags = { stack-based-tests = false; warnmore = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "assumpta"; version = "0.1.0.0"; };
      license = "BSD-2-Clause";
      copyright = "2020 phlummox";
      maintainer = "phlummox2@gmail.com";
      author = "phlummox";
      homepage = "https://github.com/phlummox/assumpta#readme";
      url = "";
      synopsis = "An SMTP client library";
      description = "An SMTP client library,\nwhich allows you to send email via\nan SMTP server.\n\nFor further details, please see the README on GitHub at\n<https://github.com/phlummox/assumpta#readme>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."assumpta-core" or (errorHandler.buildDepError "assumpta-core"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."connection" or (errorHandler.buildDepError "connection"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."mime-mail" or (errorHandler.buildDepError "mime-mail"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "hspec-tests" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."assumpta" or (errorHandler.buildDepError "assumpta"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."assumpta-core" or (errorHandler.buildDepError "assumpta-core"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."quickcheck-io" or (errorHandler.buildDepError "quickcheck-io"))
            ];
          buildable = true;
          };
        "compile-examples" = {
          depends = (pkgs.lib).optionals (!(!flags.stack-based-tests)) [
            (hsPkgs."assumpta" or (errorHandler.buildDepError "assumpta"))
            (hsPkgs."assumpta-core" or (errorHandler.buildDepError "assumpta-core"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."shelly" or (errorHandler.buildDepError "shelly"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = if !flags.stack-based-tests then false else true;
          };
        };
      };
    }