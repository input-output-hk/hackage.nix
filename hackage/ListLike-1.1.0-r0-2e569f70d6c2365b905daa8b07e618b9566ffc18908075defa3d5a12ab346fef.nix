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
      specVersion = "0";
      identifier = { name = "ListLike"; version = "1.1.0"; };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) 2007-2008 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "John Goerzen";
      homepage = "http://software.complete.org/listlike";
      url = "";
      synopsis = "Generic support for list-like structures";
      description = "Generic support for list-like structures in Haskell.\n\nThe ListLike module provides a common interface to the various Haskell\ntypes that are list-like.  Predefined interfaces include standard\nHaskell lists, Arrays, ByteStrings, and lazy ByteStrings.  Custom\ntypes can easily be made ListLike instances as well.\n\nListLike also provides for String-like types, such as String and\nByteString, for types that support input and output, and for types that can handle\ninfinite lists.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
        buildable = true;
        };
      exes = {
        "runtests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            ];
          buildable = false;
          };
        };
      };
    }