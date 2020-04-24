{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "SVG2Q"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jan Greve";
      author = "Jan Greve";
      homepage = "http://www.informatik.uni-kiel.de/~jgr/svg2q";
      url = "";
      synopsis = "Code generation tool for Quartz code from a SVG.";
      description = "svg2q will generate a Objective C Class from a SVG file which shows the SVG. The Class offers methods to set attributes of those SVG elements that have ids.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "svg2q" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."svgutils" or ((hsPkgs.pkgs-errors).buildDepError "svgutils"))
            (hsPkgs."language-c" or ((hsPkgs.pkgs-errors).buildDepError "language-c"))
            (hsPkgs."xml" or ((hsPkgs.pkgs-errors).buildDepError "xml"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            ];
          buildable = true;
          };
        };
      };
    }