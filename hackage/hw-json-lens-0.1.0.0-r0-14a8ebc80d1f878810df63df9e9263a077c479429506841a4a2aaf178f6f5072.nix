{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hw-json-lens"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2016 Alexey Raga, 2018 John Ky";
      maintainer = "alexey.raga@gmail.com, newhoggy@gmail.com";
      author = "Alexey Raga, John Ky";
      homepage = "http://github.com/haskell-works/hw-json-lens#readme";
      url = "";
      synopsis = "Lens for hw-json";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."hw-json" or ((hsPkgs.pkgs-errors).buildDepError "hw-json"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
          (hsPkgs."word8" or ((hsPkgs.pkgs-errors).buildDepError "word8"))
          ];
        buildable = true;
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."hw-json" or ((hsPkgs.pkgs-errors).buildDepError "hw-json"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."hw-json-lens" or ((hsPkgs.pkgs-errors).buildDepError "hw-json-lens"))
            ];
          buildable = true;
          };
        };
      };
    }