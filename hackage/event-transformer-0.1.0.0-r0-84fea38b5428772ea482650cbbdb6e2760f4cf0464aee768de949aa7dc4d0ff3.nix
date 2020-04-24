{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "event-transformer"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Schell Scivally";
      maintainer = "schell@zyghost.com";
      author = "Schell Scivally";
      homepage = "https://github.com/schell/event-transformer#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "event-transformer-exe" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."event-transformer" or ((hsPkgs.pkgs-errors).buildDepError "event-transformer"))
            ];
          buildable = true;
          };
        };
      tests = {
        "event-transformer-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."event-transformer" or ((hsPkgs.pkgs-errors).buildDepError "event-transformer"))
            ];
          buildable = true;
          };
        };
      };
    }