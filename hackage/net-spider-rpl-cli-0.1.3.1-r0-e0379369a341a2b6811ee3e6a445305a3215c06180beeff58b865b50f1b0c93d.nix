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
    flags = { static = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "net-spider-rpl-cli"; version = "0.1.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Toshio Ito <debug.ito@gmail.com>";
      author = "Toshio Ito <debug.ito@gmail.com>";
      homepage = "https://github.com/debug-ito/net-spider";
      url = "";
      synopsis = "CLI executable of NetSpider.RPL.";
      description = "CLI executable of \"NetSpider.RPL\". It's also an example of \"NetSpider.CLI\" module.\n\n__This package is an experimental release. CLI interface and functionality may change drastically in future.__\n\nFor detail, see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."net-spider" or (errorHandler.buildDepError "net-spider"))
          (hsPkgs."net-spider-rpl" or (errorHandler.buildDepError "net-spider-rpl"))
          (hsPkgs."net-spider-cli" or (errorHandler.buildDepError "net-spider-cli"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."greskell" or (errorHandler.buildDepError "greskell"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "net-spider-rpl-cli" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."net-spider-rpl-cli" or (errorHandler.buildDepError "net-spider-rpl-cli"))
            ];
          buildable = true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."net-spider-rpl-cli" or (errorHandler.buildDepError "net-spider-rpl-cli"))
            (hsPkgs."net-spider" or (errorHandler.buildDepError "net-spider"))
            (hsPkgs."net-spider-rpl" or (errorHandler.buildDepError "net-spider-rpl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."net-spider-cli" or (errorHandler.buildDepError "net-spider-cli"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."ip" or (errorHandler.buildDepError "ip"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."fast-logger" or (errorHandler.buildDepError "fast-logger"))
            ];
          buildable = true;
          };
        };
      };
    }