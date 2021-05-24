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
      identifier = { name = "check-cfg-ambiguity"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Askar Safin <safinaskar@mail.ru>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Checks context free grammar for ambiguity using brute force up to given limit";
      description = "Checks context free grammar for ambiguity using brute force up to given limit.\n\nIt is impossible to check arbitrary context free grammar for ambiguity on a Turing machine. So we provide you brute force algorithm up to a limit.\n\nYou can also use function \"upTo\" from package \"Earley-0.13.0.1\" for the same purpose, but it can freeze on infinitely ambiguous grammars: https://github.com/ollef/Earley/issues/54 . So I decided to write and publish this package.\n\nYou don't need to be registered on SourceHut to create bug report.";
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
      };
    }