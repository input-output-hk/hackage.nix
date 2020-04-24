{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hspec-bracket"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2019 Kei Hibino";
      maintainer = "ex8k.hibino@gmail.com";
      author = "Kei Hibino";
      homepage = "http://github.com/khibino/haskell-hspec-bracket";
      url = "";
      synopsis = "The bracket definitions for Hspec";
      description = "This package provides dirty-hack implementation of\nbracket definitions for Hspec.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
          ];
        buildable = true;
        };
      };
    }