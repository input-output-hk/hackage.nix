{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "h-booru"; version = "0.2.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "fuuzetsu@fuuzetsu.co.uk";
      author = "Mateusz Kowalczyk";
      homepage = "https://github.com/Fuuzetsu/h-booru";
      url = "";
      synopsis = "Haskell library for retrieving data from various booru image sites";
      description = "Haskell library for retrieving data from various booru image sites.\nBy providing a common interface for such sites and some parsers for\nfew existing sites, the hope is to alleviate the effort of writing\napplications which interface with them.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hxt" or ((hsPkgs.pkgs-errors).buildDepError "hxt"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."vinyl" or ((hsPkgs.pkgs-errors).buildDepError "vinyl"))
          ];
        buildable = true;
        };
      exes = {
        "h-booru" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hxt" or ((hsPkgs.pkgs-errors).buildDepError "hxt"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."vinyl" or ((hsPkgs.pkgs-errors).buildDepError "vinyl"))
            ];
          buildable = true;
          };
        };
      };
    }