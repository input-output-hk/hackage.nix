{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "semialign-indexed"; version = "1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "C. McCann, Oleg Grenrus";
      homepage = "https://github.com/isomorphism/these";
      url = "";
      synopsis = "SemialignWithIndex, i.e. izipWith and ialignWith";
      description = "This package provides @SemialignWithIndex@ with two members\n\n@\nclass (FunctorWithIndex i f, Semialign f) => SemialignWithIndex i f | f -> i where\n\\    ialignWith :: (i -> These a b -> c) -> f a -> f b -> f c\n@\n\n@\nclass (SemialignWithIndex i f, Zip f) => ZipWithIndex i f | f -> i where\n\\    izipWith   :: (i -> a -> b -> c)    -> f a -> f b -> f c\n@\n\nSuperclass @FunctorWithIndex@ is from @lens@ package.\nSee https://hackage.haskell.org/package/semialign-optics for @optics@ variant.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."semialign" or ((hsPkgs.pkgs-errors).buildDepError "semialign"))
          (hsPkgs."these" or ((hsPkgs.pkgs-errors).buildDepError "these"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ] ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "8.0")) [
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."transformers-compat" or ((hsPkgs.pkgs-errors).buildDepError "transformers-compat"))
          ];
        buildable = true;
        };
      };
    }