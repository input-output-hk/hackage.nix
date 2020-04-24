{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "relational-record-examples";
        version = "0.2.0.2";
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
      exes = {
        "examples" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HDBC" or ((hsPkgs.pkgs-errors).buildDepError "HDBC"))
            (hsPkgs."HDBC-session" or ((hsPkgs.pkgs-errors).buildDepError "HDBC-session"))
            (hsPkgs."HDBC-sqlite3" or ((hsPkgs.pkgs-errors).buildDepError "HDBC-sqlite3"))
            (hsPkgs."names-th" or ((hsPkgs.pkgs-errors).buildDepError "names-th"))
            (hsPkgs."persistable-record" or ((hsPkgs.pkgs-errors).buildDepError "persistable-record"))
            (hsPkgs."relational-query" or ((hsPkgs.pkgs-errors).buildDepError "relational-query"))
            (hsPkgs."relational-query-HDBC" or ((hsPkgs.pkgs-errors).buildDepError "relational-query-HDBC"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }