{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "json2-hdbc"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011 Yuriy Iskra";
      maintainer = "YuriyIskra  <iskra.yw@gmail.com>";
      author = "YuriyIskra";
      homepage = "";
      url = "";
      synopsis = "Support JSON for SQL Database.";
      description = "Library contains instances of ToJson(JSON2) class\nfor SqlValue(HDBC) and functions for manipulation\nJSON.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."json2" or ((hsPkgs.pkgs-errors).buildDepError "json2"))
          (hsPkgs."json2-types" or ((hsPkgs.pkgs-errors).buildDepError "json2-types"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."HDBC" or ((hsPkgs.pkgs-errors).buildDepError "HDBC"))
          ];
        buildable = true;
        };
      };
    }