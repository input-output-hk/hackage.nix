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
      specVersion = "1.2";
      identifier = { name = "data-object-json"; version = "0.3.1.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://github.com/snoyberg/data-object-json/tree/master";
      url = "";
      synopsis = "Serialize JSON data to/from Haskell using the data-object library.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."JSONb" or (errorHandler.buildDepError "JSONb"))
          (hsPkgs."bytestring-trie" or (errorHandler.buildDepError "bytestring-trie"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-object" or (errorHandler.buildDepError "data-object"))
          (hsPkgs."convertible-text" or (errorHandler.buildDepError "convertible-text"))
          (hsPkgs."failure" or (errorHandler.buildDepError "failure"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }