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
      specVersion = "3.0";
      identifier = { name = "check-cfg-ambiguity"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Askar Safin <safinaskar@mail.ru>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Checks context free grammar for ambiguity using brute force up to given limit";
      description = "Checks context free grammar for ambiguity using brute force up to given limit.\n\nIt is impossible to check arbitrary context free grammar for ambiguity on a Turing machine. So we provide you brute force algorithm up to a limit.\n\nYou can also use function \"upTo\" from package \"Earley-0.13.0.1\" for the same purpose, but it can freeze on infinitely ambiguous grammars: https://github.com/ollef/Earley/issues/54 . So I decided to write and publish this package.\n\nSee also: https://mail.haskell.org/pipermail/haskell-cafe/2021-May/134006.html\n\nYou don't need to be registered on SourceHut to create bug report.\n\nIf you think that this software is not needed or existing software already subsumes its functionality, please, tell me that, I will not be offended.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }