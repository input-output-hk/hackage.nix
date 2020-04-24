{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "relational-query-HDBC"; version = "0.2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013 2014 Kei Hibino, Shohei Murayama, Shohei Yasutake, Sho KURODA";
      maintainer = "ex8k.hibino@gmail.com, shohei.murayama@gmail.com, amutake.s@gmail.com, krdlab@gmail.com";
      author = "Kei Hibino, Shohei Murayama, Shohei Yasutake, Sho KURODA";
      homepage = "http://khibino.github.io/haskell-relational-record/";
      url = "";
      synopsis = "HDBC instance of relational-query and typed query interface for HDBC";
      description = "This package contains the HDBC instance of relational-query and\nthe typed query interface for HDBC.\nGenerating Database table definitions and functions for\nrelational-query by reading table and index definitions\nfrom Database system catalogs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."convertible" or ((hsPkgs.pkgs-errors).buildDepError "convertible"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."dlist" or ((hsPkgs.pkgs-errors).buildDepError "dlist"))
          (hsPkgs."names-th" or ((hsPkgs.pkgs-errors).buildDepError "names-th"))
          (hsPkgs."persistable-record" or ((hsPkgs.pkgs-errors).buildDepError "persistable-record"))
          (hsPkgs."relational-query" or ((hsPkgs.pkgs-errors).buildDepError "relational-query"))
          (hsPkgs."relational-schemas" or ((hsPkgs.pkgs-errors).buildDepError "relational-schemas"))
          (hsPkgs."HDBC" or ((hsPkgs.pkgs-errors).buildDepError "HDBC"))
          (hsPkgs."HDBC-session" or ((hsPkgs.pkgs-errors).buildDepError "HDBC-session"))
          ];
        buildable = true;
        };
      };
    }