{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "fused-effects-exceptions"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Josh Vera and Patrick Thomson";
      maintainer = "patrickt@github.com";
      author = "Josh Vera";
      homepage = "https://github.com/fused-effects/fused-effects-exceptions#readme";
      url = "";
      synopsis = "Handle exceptions thrown in IO with fused-effects.";
      description = "Provides an effect that enables catching exceptions thrown from impure computations such as 'IO'.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."fused-effects" or ((hsPkgs.pkgs-errors).buildDepError "fused-effects"))
          (hsPkgs."safe-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "safe-exceptions"))
          (hsPkgs."unliftio-core" or ((hsPkgs.pkgs-errors).buildDepError "unliftio-core"))
          ];
        buildable = true;
        };
      };
    }