{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { old-syntactic = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "imperative-edsl"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2015 Anders Persson, Emil Axelsson, Markus Aronsson";
      maintainer = "emax@chalmers.se";
      author = "Anders Persson, Emil Axelsson, Markus Aronsson";
      homepage = "https://github.com/emilaxelsson/imperative-edsl";
      url = "";
      synopsis = "Deep embedding of imperative programs with code generation";
      description = "Deep embedding of imperative programs with code generation.\n\nThe main module for users who want to write imperative\nprograms is \"Language.Embedded.Imperative\" (and optionally\n\"Language.Embedded.Expr\" which provides a simple expression\nlanguage).\n\nExamples can be found in the @examples@ directory.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."constraints" or ((hsPkgs.pkgs-errors).buildDepError "constraints"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."exception-transformers" or ((hsPkgs.pkgs-errors).buildDepError "exception-transformers"))
          (hsPkgs."language-c-quote" or ((hsPkgs.pkgs-errors).buildDepError "language-c-quote"))
          (hsPkgs."mainland-pretty" or ((hsPkgs.pkgs-errors).buildDepError "mainland-pretty"))
          (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
          (hsPkgs."microlens-mtl" or ((hsPkgs.pkgs-errors).buildDepError "microlens-mtl"))
          (hsPkgs."microlens-th" or ((hsPkgs.pkgs-errors).buildDepError "microlens-th"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."operational-alacarte" or ((hsPkgs.pkgs-errors).buildDepError "operational-alacarte"))
          (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
          (hsPkgs."BoundedChan" or ((hsPkgs.pkgs-errors).buildDepError "BoundedChan"))
          (hsPkgs."srcloc" or ((hsPkgs.pkgs-errors).buildDepError "srcloc"))
          ] ++ (if flags.old-syntactic
          then [
            (hsPkgs."syntactic" or ((hsPkgs.pkgs-errors).buildDepError "syntactic"))
            ]
          else [
            (hsPkgs."open-typerep" or ((hsPkgs.pkgs-errors).buildDepError "open-typerep"))
            (hsPkgs."syntactic" or ((hsPkgs.pkgs-errors).buildDepError "syntactic"))
            ]);
        buildable = true;
        };
      tests = {
        "Examples" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."imperative-edsl" or ((hsPkgs.pkgs-errors).buildDepError "imperative-edsl"))
            (hsPkgs."mainland-pretty" or ((hsPkgs.pkgs-errors).buildDepError "mainland-pretty"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        "Semantics" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."imperative-edsl" or ((hsPkgs.pkgs-errors).buildDepError "imperative-edsl"))
            ];
          buildable = true;
          };
        };
      };
    }