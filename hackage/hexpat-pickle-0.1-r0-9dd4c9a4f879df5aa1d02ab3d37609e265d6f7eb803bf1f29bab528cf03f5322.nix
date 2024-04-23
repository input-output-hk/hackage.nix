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
      identifier = { name = "hexpat-pickle"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Stephen Blackheath";
      maintainer = "http://blacksapphire.com/antispam/";
      author = "Stephen Blackheath, Matthew Pocock";
      homepage = "http://code.haskell.org/hexpat-pickle/";
      url = "";
      synopsis = "XML picklers based on hexpat, almost source code compatible with HXT";
      description = "A library of combinators that allows Haskell data structures to be pickled\nto/from the Tree datatype defined in the hexpat package. It is almost source\ncode compatible with the pickling functionality of the HXT package, to allow\nyou to switch easily between the two implementations. This implementation is\nsimpler and more limited than HXT, but considerably faster.\nThis package does not depend on HXT.\n\nDARCS repository:\n<http://code.haskell.org/hexpat-pickle/>\n\nInformation/tutorial about the picklers found in the HXT package:\n<http://www.haskell.org/haskellwiki/HXT/Conversion_of_Haskell_data_from/to_XML>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hexpat" or (errorHandler.buildDepError "hexpat"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
    };
  }