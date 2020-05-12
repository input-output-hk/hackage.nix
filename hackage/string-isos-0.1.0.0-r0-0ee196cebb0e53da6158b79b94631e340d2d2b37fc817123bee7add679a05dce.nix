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
      identifier = { name = "string-isos"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "fresheyeball@gmail.com";
      author = "Isaac Shapira";
      homepage = "";
      url = "";
      synopsis = "Tools for working with isomorphisms of strings";
      description = "Haskell has 5 common string types, Text, Lazy Text, ByteString, Lazy ByteString, and String ([Char]). Assuming utf8 encoding, we can make the pain of these conflicts much less via polymorphism.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
          (hsPkgs."type-iso" or (errorHandler.buildDepError "type-iso"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          ];
        buildable = true;
        };
      };
    }