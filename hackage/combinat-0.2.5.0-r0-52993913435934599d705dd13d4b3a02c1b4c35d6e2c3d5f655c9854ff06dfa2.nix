{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { withquickcheck = false; splitbase = true; base4 = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "combinat"; version = "0.2.5.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2014 Balazs Komuves";
      maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
      author = "Balazs Komuves";
      homepage = "http://code.haskell.org/~bkomuves/";
      url = "";
      synopsis = "Generation of various combinatorial objects.";
      description = "A collection of functions to generate (and if there is\na formula, count) combinatorial objects like partitions,\ncompositions, permutations, Young tableaux, various trees,\netc.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.splitbase
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ] ++ (pkgs.lib).optional (flags.withquickcheck) (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
        buildable = true;
        };
      };
    }