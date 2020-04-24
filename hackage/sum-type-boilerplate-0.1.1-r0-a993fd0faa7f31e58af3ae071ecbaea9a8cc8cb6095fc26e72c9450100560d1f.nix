{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sum-type-boilerplate"; version = "0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "David Reaver";
      author = "David Reaver";
      homepage = "https://github.com/jdreaver/sum-type-boilerplate#readme";
      url = "";
      synopsis = "Library for reducing the boilerplate involved with sum types";
      description = "Library for reducing the boilerplate involved in creating and manipulating sum types";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."sum-type-boilerplate" or ((hsPkgs.pkgs-errors).buildDepError "sum-type-boilerplate"))
            ];
          buildable = true;
          };
        };
      };
    }