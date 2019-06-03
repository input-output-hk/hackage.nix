{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "semialign-indexed"; version = "1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "C. McCann, Oleg Grenrus";
      homepage = "https://github.com/isomorphism/these";
      url = "";
      synopsis = "SemialignWithIndex, i.e. izip and ialign";
      description = "This package provides @SemialignWithIndex@ with two members\n\n@\nclass (FunctorWithIndex i f, Semialign f) => SemialignWithIndex i f | f -> i where\n\\    ialignWith :: (i -> These a b -> c) -> f a -> f b -> f c\n\\    izipWith   :: (i -> a -> b -> c)    -> f a -> f b -> f c\n@\n\nSuperclass @FunctorWithIndex@ is from @lens@ package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.semialign)
          (hsPkgs.these)
          (hsPkgs.hashable)
          (hsPkgs.lens)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          ] ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "8.0")) [
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
          ];
        };
      };
    }