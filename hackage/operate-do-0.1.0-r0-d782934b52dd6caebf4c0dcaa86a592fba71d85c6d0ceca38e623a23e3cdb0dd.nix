{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { test-doctest = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "operate-do"; version = "0.1.0"; };
      license = "MIT";
      copyright = "2016 uecmma";
      maintainer = "developer@mma.club.uec.ac.jp";
      author = "uecmma";
      homepage = "https://github.com/uecmma/haskell-library-collections/tree/master/operate-do";
      url = "";
      synopsis = "Simple project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."charset" or ((hsPkgs.pkgs-errors).buildDepError "charset"))
          (hsPkgs."haskell-src-meta" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-meta"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "spec-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."operate-do" or ((hsPkgs.pkgs-errors).buildDepError "operate-do"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        "doc-test" = {
          depends = (pkgs.lib).optionals (!(!flags.test-doctest)) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."filemanip" or ((hsPkgs.pkgs-errors).buildDepError "filemanip"))
            ];
          buildable = if !flags.test-doctest then false else true;
          };
        };
      };
    }