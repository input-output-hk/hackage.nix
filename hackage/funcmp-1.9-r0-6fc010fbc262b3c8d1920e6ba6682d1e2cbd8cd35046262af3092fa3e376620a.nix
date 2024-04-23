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
      identifier = { name = "funcmp"; version = "1.9"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "Meik Hellmund, Ralf Hinze, Joachim Korittky,\nMarco Kuhlmann, Ferenc Wágner, Peter Simons,\nRobin Green";
      homepage = "https://github.com/peti/funcmp";
      url = "";
      synopsis = "Functional MetaPost is a Haskell frontend to the MetaPost language";
      description = "Functional MetaPost is a Haskell frontend to the MetaPost language by John\nHobby. Users write their graphics as Haskell programs, which then emit\nMetaPost code that can be compiled into encapsulated PostScript files and\nsmoothly included into e.g. LaTeX.\n\nA collection of useful examples how to use Functional MetaPost can be found\nin the <http://download.savannah.nongnu.org/releases/funcmp/Manual_eng.ps user's manual>.\nThe document doesn't offer very much detail in terms of explanations, but the\ncode samples are quite helpful. Further documentation can be found in the\n<http://download.savannah.nongnu.org/releases/funcmp/Thesis_eng.ps original thesis>\nthat describes the implementation. The text is also available in\n<http://download.savannah.nongnu.org/releases/funcmp/Thesis.ps German>.\n\nLast but not least, there is a\n<http://download.savannah.nongnu.org/releases/funcmp/Tutorial_eng.ps tutorial>\nthat offers many helpful examples (which is also available in\n<http://download.savannah.nongnu.org/releases/funcmp/Tutorial.ps German>).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
        ];
        buildable = true;
      };
    };
  }