{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "monad-metrics"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "2017 Seller Labs, 2016 Taylor Fausak";
      maintainer = "matt@sellerlabs.com";
      author = "Matthew Parsons";
      homepage = "https://github.com/parsonsmatt/monad-metrics#readme";
      url = "";
      synopsis = "A convenient wrapper around EKG metrics";
      description = "A convenient wrapper for collecting application metrics. Please see the README.md for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."clock" or ((hsPkgs.pkgs-errors).buildDepError "clock"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."ekg-core" or ((hsPkgs.pkgs-errors).buildDepError "ekg-core"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
          ];
        buildable = true;
        };
      tests = {
        "monad-metrics-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."monad-metrics" or ((hsPkgs.pkgs-errors).buildDepError "monad-metrics"))
            ];
          buildable = true;
          };
        };
      };
    }