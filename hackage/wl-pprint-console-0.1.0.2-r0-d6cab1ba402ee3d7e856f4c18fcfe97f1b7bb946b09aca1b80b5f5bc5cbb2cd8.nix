{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "wl-pprint-console"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "2017 Daniel Mendler";
      maintainer = "Daniel Mendler <mail@daniel-mendler.de>";
      author = "Daniel Mendler <mail@daniel-mendler.de>";
      homepage = "https://github.com/minad/wl-pprint-console#readme";
      url = "";
      synopsis = "Wadler/Leijen pretty printer supporting colorful console output.";
      description = "Wadler/Leijen pretty printer with support for annotations and colorful console output. Additional useful display routines are provided, e.g, for HTML output.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."colorful-monoids" or ((hsPkgs.pkgs-errors).buildDepError "colorful-monoids"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."wl-pprint-annotated" or ((hsPkgs.pkgs-errors).buildDepError "wl-pprint-annotated"))
          ];
        buildable = true;
        };
      };
    }