{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { split-base = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "pqc"; version = "0.7.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Don Stewart 2006-2007, shelarcy 2011-2012";
      maintainer = "shelarcy <shelarcy@gmail.com>";
      author = "Don Stewart";
      homepage = "http://darcsden.com/shelarcy/pqc";
      url = "";
      synopsis = "Parallel batch driver for QuickCheck";
      description = "Parallel batch driver for QuickCheck";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.split-base
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
        buildable = true;
        };
      tests = {
        "Example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."pqc" or ((hsPkgs.pkgs-errors).buildDepError "pqc"))
            (hsPkgs."ChasingBottoms" or ((hsPkgs.pkgs-errors).buildDepError "ChasingBottoms"))
            ];
          buildable = true;
          };
        };
      };
    }