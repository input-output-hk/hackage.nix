{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { build-example = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "s-cargot"; version = "0.1.4.0"; };
      license = "BSD-3-Clause";
      copyright = "©2018 Getty Ritter";
      maintainer = "Getty Ritter <s-cargot@infinitenegativeutility.com>";
      author = "Getty Ritter <s-cargot@infinitenegativeutility.com>";
      homepage = "https://github.com/aisamanra/s-cargot";
      url = "";
      synopsis = "A flexible, extensible s-expression library.";
      description = "S-Cargot is a library for working with s-expressions in\na modular and extensible way, opting for genericity and\nflexibility instead of speed. Instead of understanding\none particular form of s-expression, the S-Cargot library\nexposes tools for parsing or emitting different kinds of\ns-expressions, including features not normally included\nin an s-expression library like reader macros or tight\ncontrol over indentation in pretty-printing.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."s-cargot" or ((hsPkgs.pkgs-errors).buildDepError "s-cargot"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = if !flags.build-example then false else true;
          };
        };
      tests = {
        "s-cargot-qc" = {
          depends = [
            (hsPkgs."s-cargot" or ((hsPkgs.pkgs-errors).buildDepError "s-cargot"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        "s-cargot-printparse" = {
          depends = [
            (hsPkgs."s-cargot" or ((hsPkgs.pkgs-errors).buildDepError "s-cargot"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }