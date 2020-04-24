{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "rhine-gloss"; version = "0.5.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "programming@manuelbaerenz.de";
      author = "Manuel Bärenz";
      homepage = "";
      url = "";
      synopsis = "Gloss backend for Rhine";
      description = "This package provides a simple wrapper for the `gloss` library,\nor rather the function `Graphics.Gloss.play`,\nenabling you to write `gloss` applications as signal functions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."rhine" or ((hsPkgs.pkgs-errors).buildDepError "rhine"))
          (hsPkgs."dunai" or ((hsPkgs.pkgs-errors).buildDepError "dunai"))
          (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
          ];
        buildable = true;
        };
      exes = {
        "rhine-gloss-gears" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."rhine-gloss" or ((hsPkgs.pkgs-errors).buildDepError "rhine-gloss"))
            ];
          buildable = true;
          };
        };
      };
    }