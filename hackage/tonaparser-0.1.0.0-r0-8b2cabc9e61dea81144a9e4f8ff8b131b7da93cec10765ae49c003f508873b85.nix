{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildexample = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "tonaparser"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2018 Kadzuya Okamoto";
      maintainer = "arow.okamoto+github@gmail.com";
      author = "Kadzuya Okamoto, Dennis Gosnell";
      homepage = "https://github.com/tonatona-project/tonatona#readme";
      url = "";
      synopsis = "Scalable way to pass runtime configurations for tonatona";
      description = "Tonaparser provides a way to pass runtime configurations. This library is supposed to be used with @tonatona@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."envy" or ((hsPkgs.pkgs-errors).buildDepError "envy"))
          (hsPkgs."rio" or ((hsPkgs.pkgs-errors).buildDepError "rio"))
          (hsPkgs."say" or ((hsPkgs.pkgs-errors).buildDepError "say"))
          ];
        buildable = true;
        };
      exes = {
        "tonaparser-example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."envy" or ((hsPkgs.pkgs-errors).buildDepError "envy"))
            (hsPkgs."rio" or ((hsPkgs.pkgs-errors).buildDepError "rio"))
            (hsPkgs."say" or ((hsPkgs.pkgs-errors).buildDepError "say"))
            (hsPkgs."tonaparser" or ((hsPkgs.pkgs-errors).buildDepError "tonaparser"))
            ];
          buildable = if flags.buildexample then true else false;
          };
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."Glob" or ((hsPkgs.pkgs-errors).buildDepError "Glob"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."envy" or ((hsPkgs.pkgs-errors).buildDepError "envy"))
            (hsPkgs."rio" or ((hsPkgs.pkgs-errors).buildDepError "rio"))
            (hsPkgs."say" or ((hsPkgs.pkgs-errors).buildDepError "say"))
            ];
          buildable = true;
          };
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."envy" or ((hsPkgs.pkgs-errors).buildDepError "envy"))
            (hsPkgs."rio" or ((hsPkgs.pkgs-errors).buildDepError "rio"))
            (hsPkgs."say" or ((hsPkgs.pkgs-errors).buildDepError "say"))
            (hsPkgs."tonatona" or ((hsPkgs.pkgs-errors).buildDepError "tonatona"))
            ];
          buildable = true;
          };
        };
      };
    }