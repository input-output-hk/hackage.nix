{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "convert-annotation"; version = "0.2.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Copyright: (c) 2016 Gregory W. Schwartz";
      maintainer = "youremail@example.com";
      author = "Gregory W. Schwartz";
      homepage = "http://github.com/GregorySchwartz/convert-annotation#readme";
      url = "";
      synopsis = "Insert synopsis here";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."lens-aeson" or ((hsPkgs.pkgs-errors).buildDepError "lens-aeson"))
          (hsPkgs."wreq" or ((hsPkgs.pkgs-errors).buildDepError "wreq"))
          (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          ];
        buildable = true;
        };
      exes = {
        "convert-annotation" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."convert-annotation" or ((hsPkgs.pkgs-errors).buildDepError "convert-annotation"))
            (hsPkgs."optparse-generic" or ((hsPkgs.pkgs-errors).buildDepError "optparse-generic"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."cassava" or ((hsPkgs.pkgs-errors).buildDepError "cassava"))
            (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
            (hsPkgs."pipes-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "pipes-bytestring"))
            (hsPkgs."pipes-csv" or ((hsPkgs.pkgs-errors).buildDepError "pipes-csv"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            ];
          buildable = true;
          };
        };
      };
    }