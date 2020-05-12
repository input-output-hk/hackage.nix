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
    flags = { bytestring-in-base = false; split-base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "suffixtree"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bos@serpentine.com";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "http://www.serpentine.com/software/suffixtree/";
      url = "";
      synopsis = "Efficient, lazy suffix tree implementation";
      description = "An efficient, lazy suffix tree implementation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ] ++ (if flags.bytestring-in-base
          then [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ])) ++ (if flags.split-base
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
        };
      };
    }