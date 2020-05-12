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
      specVersion = "2.0";
      identifier = { name = "hjugement-cli"; version = "0.0.0.20190721"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Julien Moutinho <julm+hjugement@autogeree.net>";
      author = "Julien Moutinho <julm+hjugement@autogeree.net>";
      homepage = "";
      url = "";
      synopsis = "Majority Judgment and Helios-C command line tool";
      description = "Work in progress command line interface for:\n\n* <https://hackage.haskell.org/package/hjugement hjugement>\n* <https://hackage.haskell.org/package/hjugemen-protocol hjugement-protocol>\n\nRun with --help parameter to read the manual.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hjugement" = {
          depends = [
            (hsPkgs."hjugement" or (errorHandler.buildDepError "hjugement"))
            (hsPkgs."hjugement-protocol" or (errorHandler.buildDepError "hjugement-protocol"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."lens-family-core" or (errorHandler.buildDepError "lens-family-core"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."pipes-aeson" or (errorHandler.buildDepError "pipes-aeson"))
            (hsPkgs."pipes-bytestring" or (errorHandler.buildDepError "pipes-bytestring"))
            (hsPkgs."pipes-group" or (errorHandler.buildDepError "pipes-group"))
            (hsPkgs."pipes-parse" or (errorHandler.buildDepError "pipes-parse"))
            (hsPkgs."pipes-safe" or (errorHandler.buildDepError "pipes-safe"))
            (hsPkgs."pipes-text" or (errorHandler.buildDepError "pipes-text"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
            (hsPkgs."symantic-cli" or (errorHandler.buildDepError "symantic-cli"))
            (hsPkgs."symantic-document" or (errorHandler.buildDepError "symantic-document"))
            (hsPkgs."terminal-size" or (errorHandler.buildDepError "terminal-size"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }