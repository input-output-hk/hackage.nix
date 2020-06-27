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
      specVersion = "1.12";
      identifier = { name = "yapb"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Kwanghoon Choi";
      maintainer = "lazyswamp@gmail.com";
      author = "Kwanghoon Choi";
      homepage = "https://github.com/kwanghoon/yapb#readme";
      url = "";
      synopsis = "Yet Another Parser Builder (YAPB)";
      description = "A programmable LALR(1) parser builder system. Please see the README on GitHub at <https://github.com/kwanghoon/yapb#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          ];
        buildable = true;
        };
      exes = {
        "conv-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."yapb" or (errorHandler.buildDepError "yapb"))
            ];
          buildable = true;
          };
        "parser-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."yapb" or (errorHandler.buildDepError "yapb"))
            ];
          buildable = true;
          };
        "polyrpc-exe" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."json" or (errorHandler.buildDepError "json"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."yapb" or (errorHandler.buildDepError "yapb"))
            ];
          buildable = true;
          };
        "syncomp-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."yapb" or (errorHandler.buildDepError "yapb"))
            ];
          buildable = true;
          };
        "yapb-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."yapb" or (errorHandler.buildDepError "yapb"))
            ];
          buildable = true;
          };
        };
      tests = {
        "yapb-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."yapb" or (errorHandler.buildDepError "yapb"))
            ];
          buildable = true;
          };
        };
      };
    }