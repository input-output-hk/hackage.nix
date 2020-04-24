{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "X"; version = "0.3.0.0"; };
      license = "BSD-3-Clause AND GPL-3.0-or-later";
      copyright = "(c) 2007-2008 Galois Inc.,\n(c) 2019 Herbert Valerio Riedel";
      maintainer = "hvr@gnu.org";
      author = "Galois Inc., Herbert Valerio Riedel";
      homepage = "";
      url = "";
      synopsis = "A light-weight XML library";
      description = "Light-weight XML library derived from the [`xml` package](http://hackage.haskell.org/package/xml)\nfor simple parsing and creation of XML documents.\nIt only depends on @base@, @deepseq@, @bytestring@, @text@, and @text-short@.\n\nThis library provides support for the following specifications:\n\n* <http://www.w3.org/TR/xml/ Extensible Markup Language (XML) 1.0 (5ed)>\n\n* <http://www.w3.org/TR/xml-names/ Namespaces in XML 1.0 (3ed)>\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."text-short" or ((hsPkgs.pkgs-errors).buildDepError "text-short"))
          ];
        buildable = true;
        };
      };
    }