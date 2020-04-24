{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "feldspar-language"; version = "0.4.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2009-2011, ERICSSON AB";
      maintainer = "Emil Axelsson <emax@chalmers.se>";
      author = "Functional programming group at Chalmers University of Technology";
      homepage = "http://feldspar.inf.elte.hu/feldspar/";
      url = "";
      synopsis = "A functional embedded language for DSP and parallelism";
      description = "Feldspar (Functional Embedded Language for DSP and PARallelism)\nis an embedded DSL for describing digital signal processing\nalgorithms. This package contains the language front-end and an\ninterpreter.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
          (hsPkgs."type-level" or ((hsPkgs.pkgs-errors).buildDepError "type-level"))
          ];
        buildable = true;
        };
      };
    }