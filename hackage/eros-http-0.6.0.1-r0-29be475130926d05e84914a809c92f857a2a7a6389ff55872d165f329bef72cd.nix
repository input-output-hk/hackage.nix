{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "eros-http"; version = "0.6.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2014, Peter Harpending";
      maintainer = "Peter Harpending <pharpend2@gmail.com>";
      author = "Peter Harpending";
      homepage = "";
      url = "";
      synopsis = "JSON HTTP interface to Eros.";
      description = "This is a small program that runs an HTTP server.\n\nChangelog\n\n[0.6.0.1] Remove unneeded dependency on wai-responsible.\n\n[0.6] Update to be compatible with Eros v.0.6";
      buildType = "Simple";
      };
    components = {
      exes = {
        "eros-http" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."eros" or ((hsPkgs.pkgs-errors).buildDepError "eros"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."markdown" or ((hsPkgs.pkgs-errors).buildDepError "markdown"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
            (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
            ];
          buildable = true;
          };
        };
      };
    }