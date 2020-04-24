{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { haste-inst = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "treersec"; version = "1"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "jason@sneathlane.com";
      author = "Jason Priestley";
      homepage = "http://sneathlane.com/treersec";
      url = "";
      synopsis = "Structure Editing Combinators";
      description = "Build a structure editor for a programming language from combinators following the grammar.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.haste-inst
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haste-lib" or ((hsPkgs.pkgs-errors).buildDepError "haste-lib"))
            (hsPkgs."sneathlane-haste" or ((hsPkgs.pkgs-errors).buildDepError "sneathlane-haste"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haste-compiler" or ((hsPkgs.pkgs-errors).buildDepError "haste-compiler"))
            (hsPkgs."sneathlane-haste" or ((hsPkgs.pkgs-errors).buildDepError "sneathlane-haste"))
            ];
        buildable = true;
        };
      };
    }