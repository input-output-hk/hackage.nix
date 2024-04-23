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
      identifier = { name = "markdown2svg"; version = "0.0.1.11"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      homepage = "";
      url = "";
      synopsis = "markdown to svg converter";
      description = "Usage: markdown2svg foo.md\n\nNow. Implemented only following features.\n\nparagraph, header, code, list\n\nNot yet implemented following features.\n\nnewline, bold, quote, link, horizontal line";
      buildType = "Simple";
    };
    components = {
      exes = {
        "markdown2svg" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."yjsvg" or (errorHandler.buildDepError "yjsvg"))
            (hsPkgs."papillon" or (errorHandler.buildDepError "papillon"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
            (hsPkgs."markdown-pap" or (errorHandler.buildDepError "markdown-pap"))
            (hsPkgs."binary-file" or (errorHandler.buildDepError "binary-file"))
            (hsPkgs."png-file" or (errorHandler.buildDepError "png-file"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = true;
        };
      };
    };
  }