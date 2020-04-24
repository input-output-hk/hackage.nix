{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "refty"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "(c) 2017 Shinya Takahashi";
      maintainer = "Shinya Takahashi <s.takahashi313@gmail.com>";
      author = "Shinya Takahashi";
      homepage = "https://github.com/oreshinya/refty";
      url = "";
      synopsis = "Formatted JSON generator for API server inspired by normalizr.";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "refty-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."refty" or ((hsPkgs.pkgs-errors).buildDepError "refty"))
            ];
          buildable = true;
          };
        };
      };
    }