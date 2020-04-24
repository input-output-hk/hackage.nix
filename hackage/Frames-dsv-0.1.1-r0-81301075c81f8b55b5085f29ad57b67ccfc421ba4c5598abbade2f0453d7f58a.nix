{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "Frames-dsv"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2018 Anthony Cowley";
      maintainer = "acowley@gmail.com";
      author = "Anthony Cowley";
      homepage = "https://github.com/acowley/Frames-dsv#readme";
      url = "";
      synopsis = "Alternative CSV parser for the Frames package";
      description = "Alternative CSV parser for the Frames package. In cases\nwhere the built-in Frames CSV parser does not work\n(e.g. when dealing with data files that include newlines\nembedded in data values), the parsers exposed here may\nhelp.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."Frames" or ((hsPkgs.pkgs-errors).buildDepError "Frames"))
          (hsPkgs."vinyl" or ((hsPkgs.pkgs-errors).buildDepError "vinyl"))
          (hsPkgs."hw-dsv" or ((hsPkgs.pkgs-errors).buildDepError "hw-dsv"))
          (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Frames" or ((hsPkgs.pkgs-errors).buildDepError "Frames"))
            (hsPkgs."Frames-dsv" or ((hsPkgs.pkgs-errors).buildDepError "Frames-dsv"))
            (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }