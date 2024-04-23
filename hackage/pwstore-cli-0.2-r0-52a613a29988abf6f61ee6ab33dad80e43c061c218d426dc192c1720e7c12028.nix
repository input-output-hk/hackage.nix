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
    flags = { fast = true; };
    package = {
      specVersion = "1.4";
      identifier = { name = "pwstore-cli"; version = "0.2"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "robert@rycee.net";
      author = "Robert Helgesson";
      homepage = "http://darcsden.com/rycee/pwstore-cli/";
      url = "";
      synopsis = "Command line interface for the pwstore library";
      description = "This program provides a command line interface for Peter Scott's\npwstore library.  Specifically, it is possible to generate,\nvalidate, and strengthen passwords hashed in the pwstore format.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "pwstore" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          ] ++ (if flags.fast
            then [
              (hsPkgs."pwstore-fast" or (errorHandler.buildDepError "pwstore-fast"))
            ]
            else [
              (hsPkgs."pwstore-purehaskell" or (errorHandler.buildDepError "pwstore-purehaskell"))
            ]);
          buildable = true;
        };
      };
    };
  }