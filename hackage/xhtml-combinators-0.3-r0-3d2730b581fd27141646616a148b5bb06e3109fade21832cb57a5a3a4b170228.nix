{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = { name = "xhtml-combinators"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "alasdair.armstrong@googlemail.com";
      author = "Alasdair Armstrong";
      homepage = "http://www.dcs.shef.ac.uk/~aca08aa/xhtmlc.html";
      url = "";
      synopsis = "Fast and easy to use XHTML combinators.";
      description = "xhtml-combinators provides a set of (hopefully!) fast and\neasy to use XHTML 1.0 Strict combinators built on top of the\nData.Text library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."xml" or ((hsPkgs.pkgs-errors).buildDepError "xml"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }