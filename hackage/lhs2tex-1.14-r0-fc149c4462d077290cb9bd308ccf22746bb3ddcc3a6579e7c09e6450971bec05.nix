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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "lhs2tex"; version = "1.14"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Andres Loeh <lhs2tex@andres-loeh.de>";
      author = "Ralf Hinze <ralf@informatik.uni-bonn.de>, Andres Loeh <lhs2tex@andres-loeh.de>";
      homepage = "http://www.andres-loeh.de/lhs2tex/";
      url = "";
      synopsis = "Preprocessor for typesetting Haskell sources with LaTeX";
      description = "Preprocessor for typesetting Haskell sources with LaTeX";
      buildType = "Custom";
      };
    components = {
      exes = {
        "lhs2TeX" = {
          depends = if flags.splitbase
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
              (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
              (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              (hsPkgs."process" or (errorHandler.buildDepError "process"))
              (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
              ]
            else [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
              (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
              (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
              (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
              ];
          buildable = true;
          };
        };
      };
    }