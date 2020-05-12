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
    flags = { maxcount = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "filestore"; version = "0.4.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane, Gwern Branwen, Sebastiaan Visser";
      homepage = "http://johnmacfarlane.net/repos/filestore";
      url = "";
      synopsis = "Interface for versioning file stores.";
      description = "The filestore library provides an abstract interface for a versioning\nfile store, and modules that instantiate this interface.  Currently\nGit, Darcs, and Mercurial modules are provided, and other VCSs\nor databases could be added.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          ];
        buildable = true;
        };
      };
    }