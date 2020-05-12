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
      identifier = { name = "hS3"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2007, Greg Heartsfield";
      maintainer = "Greg Heartsfield <scsibug@imap.cc>";
      author = "Greg Heartsfield <scsibug@imap.cc>";
      homepage = "http://scsibug.com/hS3";
      url = "";
      synopsis = "Interface to Amazon's Simple Storage Service (S3).";
      description = "This is the Haskell S3 library.  It provides an\ninterface to Amazon's Simple Storage Service (S3), allowing Haskell\ndevelopers to reliably store and retrieve arbitrary amounts of\ndata from anywhere on the Internet.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."Crypto" or (errorHandler.buildDepError "Crypto"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
          ];
        buildable = true;
        };
      };
    }