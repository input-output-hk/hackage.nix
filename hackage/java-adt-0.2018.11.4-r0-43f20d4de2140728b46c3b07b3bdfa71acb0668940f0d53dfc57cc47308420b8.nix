{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = { name = "java-adt"; version = "0.2018.11.4"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Andreas Abel <andreas.abel@gu.se>";
      author = "Andreas Abel";
      homepage = "http://github.com/andreasabel/java-adt";
      url = "";
      synopsis = "Create immutable algebraic data structures for Java.";
      description = "A simple tool to create immutable algebraic data structures and visitors for Java\n(such as abstract syntax trees).  The input syntax is similar to Haskell data types,\nand they will be compiled to Java class hierarchies.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "java-adt" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or ((hsPkgs.pkgs-errors).buildToolDepError "happy")))
            (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or ((hsPkgs.pkgs-errors).buildToolDepError "alex")))
            ];
          buildable = true;
          };
        };
      };
    }