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
    flags = { example = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "servant-py"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2017 Erik Aker";
      maintainer = "eraker@gmail.com";
      author = "Erik Aker";
      homepage = "https://github.com/pellagic-puffbomb/servant-py#readme";
      url = "";
      synopsis = "Automatically derive python functions to query servant webservices.";
      description = "Automatically derive python functions to query servant webservices.\n\nSupports deriving functions using Python's requests library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."charset" or (errorHandler.buildDepError "charset"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."servant-foreign" or (errorHandler.buildDepError "servant-foreign"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "servant-py-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."servant-py" or (errorHandler.buildDepError "servant-py"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."servant-foreign" or (errorHandler.buildDepError "servant-foreign"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
            (hsPkgs."servant-blaze" or (errorHandler.buildDepError "servant-blaze"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            ];
          buildable = if flags.example then true else false;
          };
        };
      tests = {
        "servant-py-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."servant-py" or (errorHandler.buildDepError "servant-py"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-expectations" or (errorHandler.buildDepError "hspec-expectations"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."servant-foreign" or (errorHandler.buildDepError "servant-foreign"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }