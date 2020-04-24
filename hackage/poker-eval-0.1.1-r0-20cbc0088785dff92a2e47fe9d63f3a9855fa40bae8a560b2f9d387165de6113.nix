{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "poker-eval"; version = "0.1.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "David Himmelstrup <lemmih@gmail.com>";
      author = "David Himmelstrup";
      homepage = "";
      url = "";
      synopsis = "Binding to libpoker-eval";
      description = "Performance oriented functions for judging poker hands\nand related tasks.\n\nHaddock documentation can be found here: <http://mirror.seize.it/poker-eval/documentation/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        libs = [
          (pkgs."poker-eval" or ((hsPkgs.pkgs-errors).sysDepError "poker-eval"))
          ];
        buildable = true;
        };
      };
    }