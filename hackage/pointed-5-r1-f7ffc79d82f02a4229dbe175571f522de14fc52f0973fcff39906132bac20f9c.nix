{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      comonad = true;
      containers = true;
      kan-extensions = true;
      semigroupoids = true;
      semigroups = true;
      stm = true;
      tagged = true;
      transformers = true;
      unordered-containers = true;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "pointed"; version = "5"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2008-2016 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/pointed/";
      url = "";
      synopsis = "Pointed and copointed data";
      description = "Pointed and copointed data";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (((((((([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
          ] ++ (pkgs.lib).optional (flags.comonad) (hsPkgs."comonad" or ((hsPkgs.pkgs-errors).buildDepError "comonad"))) ++ (pkgs.lib).optional (flags.containers) (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))) ++ (pkgs.lib).optional (flags.kan-extensions) (hsPkgs."kan-extensions" or ((hsPkgs.pkgs-errors).buildDepError "kan-extensions"))) ++ (pkgs.lib).optional (flags.semigroupoids) (hsPkgs."semigroupoids" or ((hsPkgs.pkgs-errors).buildDepError "semigroupoids"))) ++ (pkgs.lib).optional (flags.semigroups) (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))) ++ (pkgs.lib).optional (flags.stm) (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))) ++ (pkgs.lib).optional (flags.tagged) (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))) ++ (pkgs.lib).optionals (flags.transformers) [
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."transformers-compat" or ((hsPkgs.pkgs-errors).buildDepError "transformers-compat"))
          ]) ++ (pkgs.lib).optionals (flags.unordered-containers) [
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      };
    }