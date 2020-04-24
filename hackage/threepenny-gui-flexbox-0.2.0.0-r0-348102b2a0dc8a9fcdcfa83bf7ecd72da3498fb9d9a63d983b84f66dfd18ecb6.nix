{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "threepenny-gui-flexbox"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Jeremy Barisch-Rooney";
      maintainer = "barischj@tcd.ie";
      author = "Jeremy Barisch-Rooney";
      homepage = "https://github.com/barischj/threepenny-gui-flexbox";
      url = "";
      synopsis = "Flexbox layouts for Threepenny-gui.";
      description = "See the README at https://github.com/barischj/threepenny-gui-flexbox";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."clay" or ((hsPkgs.pkgs-errors).buildDepError "clay"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."threepenny-gui" or ((hsPkgs.pkgs-errors).buildDepError "threepenny-gui"))
          ];
        buildable = true;
        };
      exes = {
        "threepenny-flexbox-exe" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."threepenny-gui" or ((hsPkgs.pkgs-errors).buildDepError "threepenny-gui"))
            (hsPkgs."threepenny-gui-flexbox" or ((hsPkgs.pkgs-errors).buildDepError "threepenny-gui-flexbox"))
            ];
          buildable = true;
          };
        };
      };
    }