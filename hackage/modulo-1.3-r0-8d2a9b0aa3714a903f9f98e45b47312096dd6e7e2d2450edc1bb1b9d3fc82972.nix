{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "modulo"; version = "1.3"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Hans Hoglund <hans@hanshoglund.se>";
      author = "Hans Hoglund";
      homepage = "";
      url = "";
      synopsis = "Modular C code generator";
      description = "Modulo is a tool that generates modular, standard C interfaces based on a high-level\ndescription language. The idea is to specify functionality in the module language\nand implement it in any language that supports C-style calling conventions.\nThis package include generators for C and Common Lisp (JavaScript and Haskell on the way).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."nats" or ((hsPkgs.pkgs-errors).buildDepError "nats"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."prettify" or ((hsPkgs.pkgs-errors).buildDepError "prettify"))
          (hsPkgs."language-c" or ((hsPkgs.pkgs-errors).buildDepError "language-c"))
          (hsPkgs."haskell-src" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src"))
          (hsPkgs."atto-lisp" or ((hsPkgs.pkgs-errors).buildDepError "atto-lisp"))
          ];
        buildable = true;
        };
      exes = { "modulo" = { buildable = true; }; };
      };
    }