{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "fused-effects-exceptions"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Josh Vera and Patrick Thomson";
      maintainer = "patrickt@github.com";
      author = "Josh Vera";
      homepage = "https://github.com/patrickt/fused-effects-exceptions#readme";
      url = "";
      synopsis = "Handle exceptions thrown in IO with fused-effects.";
      description = "Provides an effect that enables catching exceptions thrown from impure computations such as 'IO'.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.fused-effects)
          (hsPkgs.safe-exceptions)
          ];
        };
      };
    }