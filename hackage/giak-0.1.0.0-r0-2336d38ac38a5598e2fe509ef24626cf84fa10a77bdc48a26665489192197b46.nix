{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "giak"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2016 Nicolas Mattia";
      maintainer = "nicolas@nmattia.com";
      author = "Nicolas Mattia";
      homepage = "http://github.com/nmattia/giak";
      url = "";
      synopsis = "Fuzzy finder for cabal executables";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      exes = {
        "giak" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."extra" or ((hsPkgs.pkgs-errors).buildDepError "extra"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filemanip" or ((hsPkgs.pkgs-errors).buildDepError "filemanip"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."stm-chans" or ((hsPkgs.pkgs-errors).buildDepError "stm-chans"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."wybor" or ((hsPkgs.pkgs-errors).buildDepError "wybor"))
            ];
          buildable = true;
          };
        };
      };
    }