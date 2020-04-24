{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "xml-conduit-writer"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "Alexander Bondarenko 2013";
      maintainer = "aenor.realm@gmail.com";
      author = "Alexander Bondarenko";
      homepage = "https://bitbucket.org/dpwiz/xml-conduit-writer";
      url = "";
      synopsis = "Warm and fuzzy creation of XML documents.";
      description = "“It can scarcely be denied that the supreme goal of\nall theory is to make the irreducible basic elements\nas simple and as few as possible without having to\nsurrender the adequate representation of a single\ndatum of experience.” ­— Albert Einstein\n\nCheck out more examples in test/Main.hs and\nlook at the results with --enable-tests.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."xml-conduit" or ((hsPkgs.pkgs-errors).buildDepError "xml-conduit"))
          (hsPkgs."xml-types" or ((hsPkgs.pkgs-errors).buildDepError "xml-types"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."dlist" or ((hsPkgs.pkgs-errors).buildDepError "dlist"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."xml-conduit-writer" or ((hsPkgs.pkgs-errors).buildDepError "xml-conduit-writer"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }