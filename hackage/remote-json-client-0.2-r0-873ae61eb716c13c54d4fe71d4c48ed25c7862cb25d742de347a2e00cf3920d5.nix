{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "remote-json-client"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 The University of Kansas";
      maintainer = "JDawson@ku.edu";
      author = "Justin Dawson and Andy Gill";
      homepage = "";
      url = "";
      synopsis = "Web client wrapper for remote-json";
      description = "Web client, using wreq, for the JSON RPC protcol.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."wreq" or ((hsPkgs.pkgs-errors).buildDepError "wreq"))
          (hsPkgs."natural-transformation" or ((hsPkgs.pkgs-errors).buildDepError "natural-transformation"))
          (hsPkgs."remote-json" or ((hsPkgs.pkgs-errors).buildDepError "remote-json"))
          ];
        buildable = true;
        };
      };
    }