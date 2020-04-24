{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { gtk = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "edit-lenses-demo"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "daniel@wagner-home.com";
      author = "Daniel Wagner";
      homepage = "";
      url = "";
      synopsis = "Programs demoing the use of symmetric, stateful edit lenses";
      description = "Some simple demo programs showing ways to use the edit-lenses package.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "lens-editor" = {
          depends = if flags.gtk
            then [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
              (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
              (hsPkgs."Diff" or ((hsPkgs.pkgs-errors).buildDepError "Diff"))
              (hsPkgs."edit-lenses" or ((hsPkgs.pkgs-errors).buildDepError "edit-lenses"))
              (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
              (hsPkgs."regex-pcre" or ((hsPkgs.pkgs-errors).buildDepError "regex-pcre"))
              ]
            else [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              ];
          buildable = true;
          };
        };
      };
    }