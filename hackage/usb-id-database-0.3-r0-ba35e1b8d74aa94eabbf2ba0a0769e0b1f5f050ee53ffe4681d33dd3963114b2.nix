{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { example = false; profile-example = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "usb-id-database"; version = "0.3"; };
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
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."download" or ((hsPkgs.pkgs-errors).buildDepError "download"))
          (hsPkgs."parsimony" or ((hsPkgs.pkgs-errors).buildDepError "parsimony"))
          ];
        buildable = true;
        };
      exes = {
        "example" = { buildable = if flags.example then true else false; };
        };
      };
    }