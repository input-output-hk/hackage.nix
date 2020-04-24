{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "setdown"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Robert Massaioli";
      maintainer = "robertmassaioli@gmail.com";
      author = "Robert Massaioli";
      homepage = "http://bitbucket.org/robertmassaioli/setdown";
      url = "";
      synopsis = "Treating files as sets to perform rapid set manipulation.";
      description = "There will be times when you have lots of set data and you want to perform many\nset operations quickly and reliably, you will also want to be able to add new\ndata to your set operations and be able to run the same set operations with\nlittle effort. This is the problem that setdown aims to solve. Setdown was\nbuilt with the intention that you would use it in conjunction with version\ncontrol tools to manage your set data and set description file.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "setdown" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."uuid" or ((hsPkgs.pkgs-errors).buildDepError "uuid"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or ((hsPkgs.pkgs-errors).buildToolDepError "alex")))
            (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or ((hsPkgs.pkgs-errors).buildToolDepError "happy")))
            ];
          buildable = true;
          };
        };
      };
    }