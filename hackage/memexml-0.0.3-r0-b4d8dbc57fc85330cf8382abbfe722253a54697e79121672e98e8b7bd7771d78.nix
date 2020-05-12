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
      specVersion = "1.8";
      identifier = { name = "memexml"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "florian.eggenhofer@univie.ac.at";
      author = "Florian Eggenhofer";
      homepage = "https://github.com/eggzilla/memexml";
      url = "";
      synopsis = "Library for reading Meme XML output";
      description = "Parse Multiple EM for Motif Elicitation (MEME) XML output.\nXML parsing is done with the HXT libary.\n\nFor more information on MEME consult: <http://meme.nbcr.net/meme/>\n\nThe memexml git repository can be found at: <https://github.com/eggzilla/memexml>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          ];
        buildable = true;
        };
      };
    }