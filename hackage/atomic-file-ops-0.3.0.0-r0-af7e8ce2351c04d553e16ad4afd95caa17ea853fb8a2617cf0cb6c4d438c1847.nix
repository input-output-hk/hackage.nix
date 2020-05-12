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
      identifier = { name = "atomic-file-ops"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017 Clinton Mead";
      maintainer = "clintonmead@gmail.com";
      author = "Clinton Mead";
      homepage = "https://github.com/clintonmead/atomic-file-ops#readme";
      url = "";
      synopsis = "Functions to atomically write to files";
      description = "See module \"System.IO.AtomicFileOps\" for an overview and documentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filelock" or (errorHandler.buildDepError "filelock"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."io-string-like" or (errorHandler.buildDepError "io-string-like"))
          ];
        buildable = true;
        };
      };
    }