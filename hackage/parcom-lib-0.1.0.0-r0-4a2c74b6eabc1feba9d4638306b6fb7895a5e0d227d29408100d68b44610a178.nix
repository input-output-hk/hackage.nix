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
      identifier = { name = "parcom-lib"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tdammers@gmail.com";
      author = "Tobias Dammers";
      homepage = "https://bitbucket.org/tdammers/parcom-lib";
      url = "";
      synopsis = "A simple parser-combinator library, a bit like Parsec but without the frills";
      description = "Parcom provides parser combinator functionality in a string-type-agnostic way;\nit supports strict ByteStrings (with Word8 tokens) and any list type (with\nthe element type as the token type) out-of-the-box, including plain old String.\nAny other stream-of-tokens type can be hooked into the library; unlike Parsec,\nnone of the built-in parsers assumes char-like tokens.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."word8" or (errorHandler.buildDepError "word8"))
          ];
        buildable = true;
        };
      };
    }