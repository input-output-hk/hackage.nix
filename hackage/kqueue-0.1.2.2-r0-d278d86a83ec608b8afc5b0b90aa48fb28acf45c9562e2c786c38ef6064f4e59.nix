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
      identifier = { name = "kqueue"; version = "0.1.2.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hesselink@gmail.com";
      author = "Erik Hesselink";
      homepage = "http://github.com/hesselink/kqueue";
      url = "";
      synopsis = "A binding to the kqueue event library.";
      description = "A low-level binding to the kqueue library as\nfound in BSD and Mac OS X. It provides, among\nother things, a way of monitoring files and\ndirectories for changes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      };
    }