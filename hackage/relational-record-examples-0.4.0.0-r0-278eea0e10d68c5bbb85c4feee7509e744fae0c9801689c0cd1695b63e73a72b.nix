{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { binary = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "relational-record-examples";
        version = "0.4.0.0";
        };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Shohei Murayama <shohei.murayama@gmail.com>";
      author = "Kazu Yamamoto <kazu@iij.ad.jp>\nShohei Murayama <shohei.murayama@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Examples of Haskell Relationa Record";
      description = "Provides examples of Haskell Relational Record";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."HDBC" or ((hsPkgs.pkgs-errors).buildDepError "HDBC"))
          (hsPkgs."HDBC-session" or ((hsPkgs.pkgs-errors).buildDepError "HDBC-session"))
          (hsPkgs."HDBC-sqlite3" or ((hsPkgs.pkgs-errors).buildDepError "HDBC-sqlite3"))
          (hsPkgs."persistable-record" or ((hsPkgs.pkgs-errors).buildDepError "persistable-record"))
          (hsPkgs."relational-query" or ((hsPkgs.pkgs-errors).buildDepError "relational-query"))
          (hsPkgs."relational-query-HDBC" or ((hsPkgs.pkgs-errors).buildDepError "relational-query-HDBC"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."relational-schemas" or ((hsPkgs.pkgs-errors).buildDepError "relational-schemas"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && false) (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"));
        buildable = true;
        };
      exes = {
        "examples" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."product-isomorphic" or ((hsPkgs.pkgs-errors).buildDepError "product-isomorphic"))
            (hsPkgs."relational-query" or ((hsPkgs.pkgs-errors).buildDepError "relational-query"))
            (hsPkgs."relational-record-examples" or ((hsPkgs.pkgs-errors).buildDepError "relational-record-examples"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && false) (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"));
          buildable = if flags.binary then true else false;
          };
        };
      };
    }