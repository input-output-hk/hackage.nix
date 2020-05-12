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
      identifier = { name = "hub"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "Chris Dornan, 2011";
      maintainer = "Chris Dornan <chris@chrisdornan.com>";
      author = "Chris Dornan <chris@chrisdornan.com>";
      homepage = "https://github.com/cdornan/hub";
      url = "";
      synopsis = "A utility for multiplexing multiple GHC installations";
      description = "This package provides a utility for multiplexing multiple\nGHC and Haskell Platform installations, the installation\nbeing selected by configuraton file or environment\nvariable.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hub" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hexpat" or (errorHandler.buildDepError "hexpat"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            ];
          buildable = true;
          };
        };
      };
    }