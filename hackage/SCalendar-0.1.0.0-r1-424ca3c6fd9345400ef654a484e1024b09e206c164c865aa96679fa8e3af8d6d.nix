{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "SCalendar"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "sebastian0092@gmail.com";
      author = "Sebastian Pulido Gomez";
      homepage = "https://github.com/sebasHack/SCalendar";
      url = "";
      synopsis = "XXXX";
      description = "XXXX";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }