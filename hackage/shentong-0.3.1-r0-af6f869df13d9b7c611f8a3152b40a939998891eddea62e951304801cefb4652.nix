{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.20";
      identifier = { name = "shentong"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "markjordanthom@gmail.com";
      author = "Mark Thom";
      homepage = "";
      url = "";
      synopsis = "A Haskell implementation of the Shen programming language";
      description = "The Shen programming language is a Lisp that offers pattern matching, lambda calculus consistency, macros, optional lazy evaluation, static type checking, one of the most powerful systems for typing in functional programming, portability over many languages, an integrated fully functional Prolog, and an inbuilt compiler-compiler. Shentong is an implementation of Shen written in Haskell.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "shen" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."hashmap" or ((hsPkgs.pkgs-errors).buildDepError "hashmap"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."uniplate" or ((hsPkgs.pkgs-errors).buildDepError "uniplate"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }