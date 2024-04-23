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
      identifier = { name = "LinkChecker"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jens@janzzstimmpfle.de";
      author = "Jens Stimpfle";
      homepage = "http://janzzstimmpfle.de/~jens/software/LinkChecker/";
      url = "";
      synopsis = "Check a bunch of local html files for broken links";
      description = "CLI tool to check for broken links in your static html files. Checking is done using HTTP HEAD requests, and only one request per URL is done per running instance (even if linked from several different files).";
      buildType = "Simple";
    };
    components = {
      exes = {
        "linkchecker" = {
          depends = [
            (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
          buildable = true;
        };
      };
    };
  }