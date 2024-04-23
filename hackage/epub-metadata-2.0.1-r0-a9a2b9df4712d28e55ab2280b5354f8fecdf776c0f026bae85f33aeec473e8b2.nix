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
      identifier = { name = "epub-metadata"; version = "2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2010, 2011 Dino Morelli";
      maintainer = "Dino Morelli <dino@ui3.info>";
      author = "Dino Morelli";
      homepage = "http://ui3.info/d/proj/epub-metadata.html";
      url = "";
      synopsis = "Library and utility for parsing and manipulating ePub OPF package data";
      description = "Library and utility for parsing and manipulating ePub\nOPF package data. An attempt has been made here to\nvery thoroughly implement the OPF Package Document\nspecification. Also included is a command-line\nutility to dump OPF package data to stdout in a\nhuman-readable form.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
        ];
        buildable = true;
      };
      exes = {
        "epub-meta" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
        };
      };
    };
  }