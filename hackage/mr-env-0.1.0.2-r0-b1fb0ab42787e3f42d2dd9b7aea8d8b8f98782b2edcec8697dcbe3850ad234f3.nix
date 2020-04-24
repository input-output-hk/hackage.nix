{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "mr-env"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "2020 Christian Rocha";
      maintainer = "christian@rocha.is";
      author = "Christian Rocha";
      homepage = "https://github.com/meowgorithm/mr-env#readme";
      url = "";
      synopsis = "A simple way to read environment variables in Haskell";
      description = "A simple way to read environment variables with fallback values in\nHaskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "test-general" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."mr-env" or ((hsPkgs.pkgs-errors).buildDepError "mr-env"))
            ];
          buildable = true;
          };
        };
      };
    }