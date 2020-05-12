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
    flags = { dev = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "countable-inflections"; version = "0.2.0"; };
      license = "MIT";
      copyright = "2016 Brady Ouren";
      maintainer = "Brady Ouren <brady@andand.co>";
      author = "Brady Ouren <brady@andand.co>";
      homepage = "https://github.com/tippenein/countable-inflections";
      url = "";
      synopsis = "Countable Text Inflections";
      description = "Provides methods for singularizing and pluralizing text.\nThe library is based on Rails' inflections.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."regex-pcre-builtin" or (errorHandler.buildDepError "regex-pcre-builtin"))
          (hsPkgs."pcre-utils" or (errorHandler.buildDepError "pcre-utils"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."countable-inflections" or (errorHandler.buildDepError "countable-inflections"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }