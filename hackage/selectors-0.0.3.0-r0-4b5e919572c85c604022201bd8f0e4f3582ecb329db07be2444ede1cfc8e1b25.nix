{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "selectors"; version = "0.0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ropoctl@gmail.com";
      author = "Rob O'Callahan";
      homepage = "http://github.com/rcallahan/selectors";
      url = "";
      synopsis = "CSS Selectors for DOM traversal";
      description = "This package provides functions for XML DOM traversal that work with \"Text.XML.Cursor\" from the xml-conduits package. The pure Haskell functions in \"XML.Selectors.CSS\" include a parser for CSS selector expressions and conversion to an \"Axis\". A QuasiQuoter is provided in \"XML.Selectors.CSS.TH\" for static validation of selector expressions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."xml-conduit" or ((hsPkgs.pkgs-errors).buildDepError "xml-conduit"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or ((hsPkgs.pkgs-errors).buildToolDepError "alex")))
          (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or ((hsPkgs.pkgs-errors).buildToolDepError "happy")))
          ];
        buildable = true;
        };
      };
    }