{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { example = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "usb-id-database"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Roel van Dijk";
      maintainer = "vandijk.roel@gmail.com";
      author = "Roel van Dijk";
      homepage = "";
      url = "";
      synopsis = "A database of USB identifiers";
      description = "Functions to find the names associated with numerical vendor and\nproduct identifiers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bimap" or ((hsPkgs.pkgs-errors).buildDepError "bimap"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."download" or ((hsPkgs.pkgs-errors).buildDepError "download"))
          (hsPkgs."encoding" or ((hsPkgs.pkgs-errors).buildDepError "encoding"))
          (hsPkgs."parsimony" or ((hsPkgs.pkgs-errors).buildDepError "parsimony"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      exes = {
        "example" = { buildable = if flags.example then true else false; };
        };
      };
    }