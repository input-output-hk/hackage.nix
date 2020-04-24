{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ghc-syb-utils"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Claus Reinke 2008";
      maintainer = "Daniel Gröber <dxld@darkboxed.org>";
      author = "Claus Reinke";
      homepage = "https://github.com/DanielG/ghc-syb";
      url = "";
      synopsis = "Scrap Your Boilerplate utilities for the GHC API.";
      description = "Scrap Your Boilerplate utilities for the GHC API.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }