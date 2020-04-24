{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "tracker"; version = "0.1"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "will@willthompson.co.uk";
      author = "Will Thompson";
      homepage = "";
      url = "";
      synopsis = "Client library for Tracker metadata database, indexer and search tool";
      description = "Client library for Tracker metadata database, indexer and search tool";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."glib" or ((hsPkgs.pkgs-errors).buildDepError "glib"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }