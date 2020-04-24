{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "lens-xml"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Nick Partridge";
      maintainer = "nkpart@gmail.com";
      author = "Nick Partridge";
      homepage = "https://github.com/nkpart/lens-xml#readme";
      url = "";
      synopsis = "Lenses for the xml package.";
      description = "Lenses for the xml package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."xml" or ((hsPkgs.pkgs-errors).buildDepError "xml"))
          ];
        buildable = true;
        };
      tests = {
        "lens-xml-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."lens-xml" or ((hsPkgs.pkgs-errors).buildDepError "lens-xml"))
            (hsPkgs."xml" or ((hsPkgs.pkgs-errors).buildDepError "xml"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            ];
          buildable = true;
          };
        };
      };
    }