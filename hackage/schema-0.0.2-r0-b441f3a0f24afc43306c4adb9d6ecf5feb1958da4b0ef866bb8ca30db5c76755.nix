{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "schema"; version = "0.0.2"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (c) 2016-2018, Iphigenia Df";
      maintainer = "Iphigenia Df <iphydf@gmail.com>";
      author = "Iphigenia Df <iphydf@gmail.com>";
      homepage = "https://toktok.github.io/";
      url = "";
      synopsis = "Encoding-independent schemas for Haskell data types.";
      description = "A Haskell implementation of encoding-independent schemas.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "testsuite" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."msgpack-binary" or ((hsPkgs.pkgs-errors).buildDepError "msgpack-binary"))
            (hsPkgs."groom" or ((hsPkgs.pkgs-errors).buildDepError "groom"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."schema" or ((hsPkgs.pkgs-errors).buildDepError "schema"))
            ];
          buildable = true;
          };
        };
      };
    }