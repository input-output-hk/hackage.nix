{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ghc-prof-aeson-flamegraph"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018, Mateusz Kowalczyk";
      maintainer = "fuuzetsu@fuuzetsu.co.uk";
      author = "Mateusz Kowalczyk";
      homepage = "https://github.com/Fuuzetsu/ghc-prof-aeson-flamegraph#readme";
      url = "";
      synopsis = "Turn GHC `-pj` profiling output into FlameGraph format.";
      description = "Please see the README on Github at <https://github.com/Fuuzetsu/ghc-prof-aeson-flamegraph#readme>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ghc-prof-aeson-flamegraph" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."ghc-prof-aeson" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prof-aeson"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }