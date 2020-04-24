{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      bytestring = true;
      fingertree = true;
      parallel = true;
      stm = true;
      quickcheck = true;
      text = true;
      reflection = true;
      parsec = true;
      mtl = true;
      overloaded-strings = true;
      optimize = false;
      };
    package = {
      specVersion = "1.2.3";
      identifier = { name = "monoids"; version = "0.1.36"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://comonad.com/reader";
      url = "";
      synopsis = "Monoids, specialized containers and a general map/reduce framework";
      description = "Monoids, specialized containers and a general map/reduce framework";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (((((((([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."category-extras" or ((hsPkgs.pkgs-errors).buildDepError "category-extras"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ] ++ (pkgs.lib).optional (flags.bytestring) (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))) ++ (pkgs.lib).optional (flags.fingertree) (hsPkgs."fingertree" or ((hsPkgs.pkgs-errors).buildDepError "fingertree"))) ++ (pkgs.lib).optional (flags.parallel) (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))) ++ (pkgs.lib).optional (flags.text) (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))) ++ (pkgs.lib).optional (flags.stm) (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))) ++ (pkgs.lib).optional (flags.quickcheck) (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))) ++ (pkgs.lib).optional (flags.reflection) (hsPkgs."reflection" or ((hsPkgs.pkgs-errors).buildDepError "reflection"))) ++ (pkgs.lib).optional (flags.parsec) (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))) ++ (pkgs.lib).optional (flags.mtl) (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"));
        buildable = true;
        };
      };
    }