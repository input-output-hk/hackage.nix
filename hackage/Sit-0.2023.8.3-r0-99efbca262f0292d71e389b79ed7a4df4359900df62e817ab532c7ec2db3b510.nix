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
      identifier = { name = "Sit"; version = "0.2023.8.3"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Andreas Abel <andreas.abel@gu.se>";
      author = "Andreas Abel <andreas.abel@gu.se>";
      homepage = "https://github.com/andreasabel/Sit";
      url = "";
      synopsis = "Prototypical type checker for Type Theory with Sized Natural Numbers";
      description = "Sit = Size-irrelevant types\n\nSit is a prototypical language with an Agda-compatible syntax.\nIt has dependent function types, universes, sized natural numbers,\nand case and recursion over natural numbers.\nThere is a relevant and an irrelevant quantifier over sizes.\nFor an example, see file test/Test.agda.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-lens-light" or (errorHandler.buildDepError "data-lens-light"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        build-tools = [
          (hsPkgs.buildPackages.alex.components.exes.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex:alex")))
          (hsPkgs.buildPackages.happy.components.exes.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy:happy")))
        ];
        buildable = true;
      };
      exes = {
        "Sit.bin" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Sit" or (errorHandler.buildDepError "Sit"))
          ];
          buildable = true;
        };
      };
      tests = {
        "system-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Sit" or (errorHandler.buildDepError "Sit"))
          ];
          buildable = true;
        };
      };
    };
  }