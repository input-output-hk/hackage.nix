{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { semigroupoids = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "monad-chronicle"; version = "1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "C. McCann, Oleg Grenrus";
      homepage = "https://github.com/isomorphism/these";
      url = "";
      synopsis = "These as a transformer, ChronicleT";
      description = "This packages provides @ChronicleT@, a monad transformer based on\nthe @Monad@ instance for @These a@, along with the usual monad\ntransformer bells and whistles.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.these)
          (hsPkgs.data-default-class)
          (hsPkgs.transformers-compat)
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs.semigroups)) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.10") (hsPkgs.transformers)) ++ (pkgs.lib).optional (flags.semigroupoids) (hsPkgs.semigroupoids);
        };
      };
    }