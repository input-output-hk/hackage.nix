{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ast-monad-json"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Masato Mouri";
      maintainer = "mkdagjp@gmail.com";
      author = "Masato Mouri";
      homepage = "https://github.com/mkdag/ast-monad-json#readme";
      url = "";
      synopsis = "A library for writing JSON";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."ast-monad" or ((hsPkgs.pkgs-errors).buildDepError "ast-monad"))
          ];
        buildable = true;
        };
      tests = {
        "ast-monad-json-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ast-monad" or ((hsPkgs.pkgs-errors).buildDepError "ast-monad"))
            (hsPkgs."ast-monad-json" or ((hsPkgs.pkgs-errors).buildDepError "ast-monad-json"))
            ];
          buildable = true;
          };
        };
      };
    }