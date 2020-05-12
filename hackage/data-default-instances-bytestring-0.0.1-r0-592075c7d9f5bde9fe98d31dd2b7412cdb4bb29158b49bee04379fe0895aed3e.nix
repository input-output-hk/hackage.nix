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
      identifier = {
        name = "data-default-instances-bytestring";
        version = "0.0.1";
        };
      license = "BSD-3-Clause";
      copyright = "(c) 2016, Peter Trško";
      maintainer = "peter.trsko@gmail.com";
      author = "Peter Trško";
      homepage = "https://github.com/trskop/data-default-extra";
      url = "";
      synopsis = "Default instances for (lazy and strict) ByteString, Builder and\nShortByteString.";
      description = "Orphan instances for @Default@ type class, which is defined in package\n<https://hackage.haskell.org/package/data-default-class data-default-class>.\n\nFollowing @Default@ instances are provided:\n\n> -- Strict ByteString:\n> instance Default ByteString where\n>     def = empty\n>\n> -- Lazy ByteString:\n> instance Default ByteString where\n>     def = empty\n\nFollowing instance is provided only for\n<https://hackage.haskell.org/package/bytestring bytestring> >=0.10, since\nthat it the version that introduced @Builder@:\n\n> instance Default Builder where\n>     def = mempty\n\nFollowing instance is provided only for\n<https://hackage.haskell.org/package/bytestring bytestring> >=0.10.4, since\nthat it the version that introduced @ShortByteString@:\n\n> instance Default ShortByteString where\n>     def = empty";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          ];
        buildable = true;
        };
      };
    }