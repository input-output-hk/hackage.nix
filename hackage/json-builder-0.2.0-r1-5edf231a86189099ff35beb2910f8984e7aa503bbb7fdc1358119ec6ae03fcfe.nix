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
      specVersion = "1.6";
      identifier = { name = "json-builder"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Leon P Smith";
      maintainer = "leon@melding-monads.com";
      author = "Leon P Smith";
      homepage = "http://github.com/lpsmith/json-builder";
      url = "";
      synopsis = "Data structure agnostic JSON serialization";
      description = "Most json packages dictate a data structure that corresponds to json values.\nTo serialize other values to json, then that value must be marshalled into\nthe specified structure.\n\nThis library avoids this marshalling step, and is thus potentially more\nefficient when serializing arbitrary data structures.  Unfortunately\njson-builder cannot yet read or process json data,  and it's not clear\nto me yet how pull a similar kind of trick to avoid unnecessary data\nstructures when parsing json data into arbitrary data types.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."blaze-textual" or (errorHandler.buildDepError "blaze-textual"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      };
    }