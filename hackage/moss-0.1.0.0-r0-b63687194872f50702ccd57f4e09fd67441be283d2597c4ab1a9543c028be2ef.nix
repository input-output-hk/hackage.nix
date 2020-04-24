{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "moss"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2018 Michael B. Gale";
      maintainer = "m.gale@warwick.ac.uk";
      author = "Michael B. Gale";
      homepage = "https://github.com/mbg/moss#readme";
      url = "";
      synopsis = "Haskell client for Moss";
      description = "Please see the README on Github at <https://github.com/mbg/moss#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."conduit-extra" or ((hsPkgs.pkgs-errors).buildDepError "conduit-extra"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."network-simple" or ((hsPkgs.pkgs-errors).buildDepError "network-simple"))
          (hsPkgs."unix-compat" or ((hsPkgs.pkgs-errors).buildDepError "unix-compat"))
          ];
        buildable = true;
        };
      };
    }