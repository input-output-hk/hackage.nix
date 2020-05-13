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
      identifier = { name = "Sit"; version = "0.2017.5.2"; };
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
      exes = {
        "Sit.bin" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-lens-light" or (errorHandler.buildDepError "data-lens-light"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex")))
            (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy")))
            ];
          buildable = true;
          };
        };
      };
    }