{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "fused-effects-lens"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Patrick Thomson";
      maintainer = "patrickt@github.com";
      author = "Patrick Thomson";
      homepage = "https://github.com/patrickt/fused-effects-lens#readme";
      url = "";
      synopsis = "Monadic lens combinators for fused-effects.";
      description = "Provides combinators for the lens-based manipulation of state and context types provided by the fused-effects library, similar to those provided for mtl-based monad transformers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.lens) (hsPkgs.fused-effects) ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.fused-effects-lens)
            (hsPkgs.lens)
            (hsPkgs.fused-effects)
            (hsPkgs.hspec)
            ];
          };
        };
      };
    }