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
      specVersion = "2.4";
      identifier = { name = "regex-wrapper"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2019 Luke Clifton";
      maintainer = "lukec@themk.net";
      author = "Luke Clifton";
      homepage = "";
      url = "";
      synopsis = "Types that can only be constructed if they match a regular expression";
      description = "Provides tooling for working with types whose values must\nmatch a regular expression provided in the type.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."string-conv" or (errorHandler.buildDepError "string-conv"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          ];
        buildable = true;
        };
      };
    }