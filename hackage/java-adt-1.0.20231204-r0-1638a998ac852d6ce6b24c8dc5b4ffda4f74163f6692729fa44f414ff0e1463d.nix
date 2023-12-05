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
      specVersion = "1.18";
      identifier = { name = "java-adt"; version = "1.0.20231204"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Andreas Abel <andreas.abel@gu.se>";
      author = "Andreas Abel";
      homepage = "https://github.com/andreasabel/java-adt";
      url = "";
      synopsis = "Create immutable algebraic data structures for Java.";
      description = "A simple tool to create immutable algebraic data structures and visitors for Java\n(such as abstract syntax trees).  The input syntax is similar to Haskell data types,\nand they will be compiled to Java class hierarchies.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "java-adt" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.happy.components.exes.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy:happy")))
            (hsPkgs.buildPackages.alex.components.exes.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex:alex")))
            ];
          buildable = true;
          };
        };
      };
    }