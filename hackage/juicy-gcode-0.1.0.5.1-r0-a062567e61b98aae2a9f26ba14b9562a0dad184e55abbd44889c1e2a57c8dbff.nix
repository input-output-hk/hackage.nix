{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "juicy-gcode"; version = "0.1.0.5.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dlacko@gmail.com";
      author = "dlacko";
      homepage = "https://github.com/domoszlai/juicy-gcode";
      url = "";
      synopsis = "SVG to G-Code converter";
      description = "SVG to G-code converter that aims to support most SVG features. The flavor of the generated G-Code can be influenced providing a configuration file.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "juicy-gcode" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."configurator" or ((hsPkgs.pkgs-errors).buildDepError "configurator"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."matrix" or ((hsPkgs.pkgs-errors).buildDepError "matrix"))
            (hsPkgs."svg-tree" or ((hsPkgs.pkgs-errors).buildDepError "svg-tree"))
            ];
          buildable = true;
          };
        };
      };
    }