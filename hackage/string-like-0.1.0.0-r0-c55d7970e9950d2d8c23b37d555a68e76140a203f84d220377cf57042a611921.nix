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
      identifier = { name = "string-like"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Willem Van Onsem";
      maintainer = "hapytexeu+gh@gmail.com";
      author = "Willem Van Onsem";
      homepage = "https://github.com/hapytex/string-like#readme";
      url = "";
      synopsis = "A package that aims to provide a uniform interface to string-like types.";
      description = "The package defines a typeclass that can be implemented to provide a uniform interface for @String@-like objects.\n\nThe typeclass itself has default implementations that convert the @StringLike@\nitem first to a lazy @Text@, then performs the operation, and converts results back to\nits @StringLike@ object. This is usually /not/ as efficient as an operation for\nthat specific type. Therefore it is advisable to implement the other functions as well.\nOne can however decide to only implement @fromText@ and @toText@; or @toString@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }