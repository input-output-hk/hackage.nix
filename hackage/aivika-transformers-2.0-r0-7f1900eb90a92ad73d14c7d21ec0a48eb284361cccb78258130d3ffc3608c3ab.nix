{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { haste-inst = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "aivika-transformers"; version = "2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2014. David Sorokin <david.sorokin@gmail.com>";
      maintainer = "David Sorokin <david.sorokin@gmail.com>";
      author = "David Sorokin";
      homepage = "http://github.com/dsorokin/aivika";
      url = "";
      synopsis = "Transformers for the Aivika simulation library";
      description = "The package adds the monad and other computation transformers to\nthe Aivika [1] library. This is a generalization of the simulation library.\n\n\\[1] <http://hackage.haskell.org/package/aivika>\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."aivika" or ((hsPkgs.pkgs-errors).buildDepError "aivika"))
          ] ++ (pkgs.lib).optional (!flags.haste-inst) (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"));
        buildable = true;
        };
      };
    }