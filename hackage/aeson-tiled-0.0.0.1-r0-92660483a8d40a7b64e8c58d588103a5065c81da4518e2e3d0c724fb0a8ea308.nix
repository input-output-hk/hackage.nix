{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "aeson-tiled"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017 Schell Scivally";
      maintainer = "schell@takt.com";
      author = "Schell Scivally";
      homepage = "https://github.com/schell/aeson-tiled#readme";
      url = "";
      synopsis = "Aeson instances for the Tiled map editor.";
      description = "The mighty Tiled 2d map editor is an open source\napp for creating tile based level maps. This package provides\ntypes and aeson instances to read Tiled json files.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "aeson-tiled-exe" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."aeson-tiled" or ((hsPkgs.pkgs-errors).buildDepError "aeson-tiled"))
            ];
          buildable = true;
          };
        };
      tests = {
        "aeson-tiled-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."aeson-tiled" or ((hsPkgs.pkgs-errors).buildDepError "aeson-tiled"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }