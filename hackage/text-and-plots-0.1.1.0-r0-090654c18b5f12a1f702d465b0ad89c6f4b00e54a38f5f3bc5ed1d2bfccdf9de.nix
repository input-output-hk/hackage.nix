{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "text-and-plots"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "(c) 2015 Anders Jellinggaard";
      maintainer = "anders.jel@gmail.com";
      author = "Anders Jellinggaard";
      homepage = "https://github.com/andersjel/haskell-text-and-plots";
      url = "";
      synopsis = "EDSL to create HTML documents with plots based on the C3.js library.";
      description = "Haskell mini-language to create HTML documents with a mixture of markup and\nplots based on the <http://c3js.org/ C3.js> library. See the\n<https://github.com/andersjel/haskell-text-and-plots github page> for an\nintroduction.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."markdown" or ((hsPkgs.pkgs-errors).buildDepError "markdown"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      };
    }