{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "deptrack-dot"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "2018 Lucas DiCioccio";
      maintainer = "lucas@dicioccio.fr";
      author = "Lucas DiCioccio";
      homepage = "https://github.com/lucasdicioccio/deptrack-project#readme";
      url = "";
      synopsis = "Facilitate Graphviz representations of DepTrack dependencies.";
      description = "Please see the README on GitHub at <https://github.com/lucasdicioccio/deptrack-project#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."deptrack-core" or ((hsPkgs.pkgs-errors).buildDepError "deptrack-core"))
          (hsPkgs."dotgen" or ((hsPkgs.pkgs-errors).buildDepError "dotgen"))
          ];
        buildable = true;
        };
      tests = {
        "deptrack-dot-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."deptrack-core" or ((hsPkgs.pkgs-errors).buildDepError "deptrack-core"))
            (hsPkgs."deptrack-dot" or ((hsPkgs.pkgs-errors).buildDepError "deptrack-dot"))
            (hsPkgs."dotgen" or ((hsPkgs.pkgs-errors).buildDepError "dotgen"))
            ];
          buildable = true;
          };
        };
      };
    }