{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "quickwebapp"; version = "2.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "julien.tanguy@jhome.fr";
      author = "Julien Tanguy";
      homepage = "";
      url = "";
      synopsis = "A quick webapp generator for any file processing tool";
      description = "A quick-and-dirty api generator, inspired from the 'interact' function from\n'Prelude'.\n\n> interactWeb reverse\n\nThis creates a server listening on port 3000.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."scotty" or ((hsPkgs.pkgs-errors).buildDepError "scotty"))
          ];
        buildable = true;
        };
      };
    }