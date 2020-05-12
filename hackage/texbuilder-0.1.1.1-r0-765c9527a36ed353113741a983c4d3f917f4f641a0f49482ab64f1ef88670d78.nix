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
      identifier = { name = "texbuilder"; version = "0.1.1.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Dominik Xaver Hörl";
      author = "Dominik Xaver Hörl";
      homepage = "https://gitlab.com/xaverdh/tex-builder#texbuilder";
      url = "";
      synopsis = "View your latex output while editing";
      description = "This program allows you to view your latex document in your pdf viewer while\nediting it in your favorite editor. When you save your document, this program\nwill recompile it, overwrite the output pdf file and send a signal to your\npdf reader to reload the file. This effectively allows for a\n\"continous preview\"-like experience.\nThis will run on Linux only at the moment.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "texbuilder" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."hinotify" or (errorHandler.buildDepError "hinotify"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            ];
          buildable = true;
          };
        };
      };
    }