{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "text-postgresql"; version = "0.0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015-2016 Kei Hibino";
      maintainer = "ex8k.hibino@gmail.com";
      author = "Kei Hibino";
      homepage = "http://khibino.github.io/haskell-relational-record/";
      url = "";
      synopsis = "Parser and Printer of PostgreSQL extended types";
      description = "This package involves parser and printer for\ntext expressions of PostgreSQL extended types.\n- inet type, cidr type";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."dlist" or ((hsPkgs.pkgs-errors).buildDepError "dlist"))
          ];
        buildable = true;
        };
      tests = {
        "pp" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-simple" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-simple"))
            (hsPkgs."text-postgresql" or ((hsPkgs.pkgs-errors).buildDepError "text-postgresql"))
            ];
          buildable = true;
          };
        };
      };
    }