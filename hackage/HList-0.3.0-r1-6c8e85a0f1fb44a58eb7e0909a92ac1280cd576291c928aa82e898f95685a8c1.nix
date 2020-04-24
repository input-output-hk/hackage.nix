{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "HList"; version = "0.3.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "oleg@pobox.com";
      author = "2004 Oleg Kiselyov (FNMOC, Monterey), Ralf Laemmel (CWI/VU, Amsterdam),\nKeean Schupke (London)";
      homepage = "";
      url = "";
      synopsis = "Heterogeneous lists";
      description = "HList is a record system providing strongly typed heterogenous lists, records,\ntype-indexed products (TIP) and co-products; licensed under the MIT X License.\n\nUser code should import \"Data.HList\" or\n\"Data.HList.CommonMain\" for a slightly more limited scope";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "examples" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            ];
          buildable = true;
          };
        "doctests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }