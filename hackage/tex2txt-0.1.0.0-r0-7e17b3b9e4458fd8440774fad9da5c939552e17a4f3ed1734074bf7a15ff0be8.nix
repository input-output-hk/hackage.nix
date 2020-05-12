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
      identifier = { name = "tex2txt"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "VTeX, Vidas Daudaravicius";
      maintainer = "vidas.daudaravicius@vtex.lt";
      author = "Vidas Daudaravicius";
      homepage = "http://textmining.lt/tex2txt/";
      url = "";
      synopsis = "LaTeX to plain-text conversion";
      description = "tex2txt converts LaTeX files to linguistic coherent plain-text which could be used for many natural language processing and analysis tasks. The primary aim of the tool is to help NLP community to simplify building large databases of NLP-ready texts from LaTeX sources. The tool can also be used as a system component when input is LaTeX text.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      exes = {
        "tex2txt" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }