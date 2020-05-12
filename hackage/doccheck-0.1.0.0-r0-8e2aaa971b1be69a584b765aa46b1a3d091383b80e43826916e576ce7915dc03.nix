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
      identifier = { name = "doccheck"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) Mateusz Kowalczyk";
      maintainer = "Mateusz Kowalczyk <fuuzetsu@fuuzetsu.co.uk>";
      author = "Mateusz Kowalczyk";
      homepage = "https://github.com/Fuuzetsu/doccheck";
      url = "";
      synopsis = "Checks Haddock comments for pitfalls and version changes.";
      description = "This tool aims to detect any common pitfalls that is often seen in documentation generated with Haddock,\ncommonly caused by lack of familiarity with the markup or time to review the generated documentation.\nExtending this tool is rather simple (add parsers) and can be easily used to judge the impact of\nchanging Haddock's parsing rules.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "doccheck" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."directory-tree" or (errorHandler.buildDepError "directory-tree"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            ];
          buildable = true;
          };
        };
      };
    }