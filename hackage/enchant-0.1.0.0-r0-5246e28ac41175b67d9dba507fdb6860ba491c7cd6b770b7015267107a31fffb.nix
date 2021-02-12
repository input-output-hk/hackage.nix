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
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "enchant"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Kwang Yul Seo";
      maintainer = "kwangyul.seo@gmail.com";
      author = "Kwang Yul Seo";
      homepage = "https://github.com/kseo/enchant#readme";
      url = "";
      synopsis = "Binding to the Enchant library";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        pkgconfig = [
          (pkgconfPkgs."enchant" or (errorHandler.pkgConfDepError "enchant"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs.components.exes.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
          ];
        buildable = true;
        };
      exes = {
        "enchant-examples-spell-check" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."enchant" or (errorHandler.buildDepError "enchant"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        };
      tests = {
        "enchant-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."enchant" or (errorHandler.buildDepError "enchant"))
            ];
          buildable = true;
          };
        };
      };
    }