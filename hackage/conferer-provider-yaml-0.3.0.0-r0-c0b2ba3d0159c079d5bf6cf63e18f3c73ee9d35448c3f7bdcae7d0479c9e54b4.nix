{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "conferer-provider-yaml"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "MIT";
      maintainer = "lucas6246@gmail.com";
      author = "Lucas David Traverso";
      homepage = "https://github.com/ludat/conferer#readme";
      url = "";
      synopsis = "Configuration for reading yaml files";
      description = "Library to abstract the parsing of many haskell config values from different config sources";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."conferer" or ((hsPkgs.pkgs-errors).buildDepError "conferer"))
          (hsPkgs."conferer-provider-json" or ((hsPkgs.pkgs-errors).buildDepError "conferer-provider-json"))
          (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
          ];
        buildable = true;
        };
      tests = {
        "specs" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."conferer" or ((hsPkgs.pkgs-errors).buildDepError "conferer"))
            (hsPkgs."conferer-provider-json" or ((hsPkgs.pkgs-errors).buildDepError "conferer-provider-json"))
            (hsPkgs."conferer-provider-yaml" or ((hsPkgs.pkgs-errors).buildDepError "conferer-provider-yaml"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
            ];
          buildable = true;
          };
        };
      };
    }