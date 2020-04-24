{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ghc-timers"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2017 Francesco Mazzoli";
      maintainer = "f@mazzo.li";
      author = "Francesco Mazzoli";
      homepage = "https://github.com/bitonic/ghc-timers#readme";
      url = "";
      synopsis = "Provides bindings to functions starting and stopping the RTS timers";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }