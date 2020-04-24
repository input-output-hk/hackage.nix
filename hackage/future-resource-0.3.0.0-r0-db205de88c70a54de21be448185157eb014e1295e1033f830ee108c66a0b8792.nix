{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "future-resource"; version = "0.3.0.0"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "capsjac";
      author = "capsjac";
      homepage = "";
      url = "";
      synopsis = "realtime resource handling with manual concurrency";
      description = "Similar to async package, lazy resource loading framework for GUI applications";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }