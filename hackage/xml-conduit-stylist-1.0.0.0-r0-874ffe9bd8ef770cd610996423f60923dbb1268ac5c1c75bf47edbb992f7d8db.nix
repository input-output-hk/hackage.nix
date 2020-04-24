{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "xml-conduit-stylist"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "Adrian Cochrane copyright 2019";
      maintainer = "adrian@openwork.nz";
      author = "Adrian Cochrane";
      homepage = "https://git.nzoss.org.nz/alcinnz/stylish-haskell";
      url = "";
      synopsis = "Bridge between xml-conduit/html-conduit and stylist";
      description = "Parses CSS from an HTML webpage and queries relevant properties for each element.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."stylist" or ((hsPkgs.pkgs-errors).buildDepError "stylist"))
          (hsPkgs."css-syntax" or ((hsPkgs.pkgs-errors).buildDepError "css-syntax"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."xml-conduit" or ((hsPkgs.pkgs-errors).buildDepError "xml-conduit"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
          ];
        buildable = true;
        };
      };
    }