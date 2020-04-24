{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "haskell-say"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Drew Haven";
      maintainer = "drew.haven@gmail.com";
      author = "Drew Haven";
      homepage = "https://github.com/periodic/haskell-say#readme";
      url = "";
      synopsis = "Let the Haskell logo talk to your users!";
      description = "Please see the README on GitHub at <https://github.com/periodic/haskell-say#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "haskell-say-exe" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskell-say" or ((hsPkgs.pkgs-errors).buildDepError "haskell-say"))
            ];
          buildable = true;
          };
        };
      };
    }