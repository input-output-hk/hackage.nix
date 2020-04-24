{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      base-transformers-1 = true;
      base-transformers-2 = true;
      vector = true;
      containers = true;
      unordered-containers = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "functor-classes-compat"; version = "1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Oleg Grenrus";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/functor-classes-compat#readme";
      url = "";
      synopsis = "Data.Functor.Classes instances for core packages";
      description = "\"Data.Functor.Classes\" instances for core packages:\n\n* containers\n\n* vector\n\n* unordered-containers";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          ] ++ (if flags.base-transformers-1
          then if flags.base-transformers-2
            then [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              ]
            else [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
              ]
          else if flags.base-transformers-2
            then [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
              (hsPkgs."transformers-compat" or ((hsPkgs.pkgs-errors).buildDepError "transformers-compat"))
              ]
            else [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
              ])) ++ [
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ]) ++ [
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          ]) ++ [
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }