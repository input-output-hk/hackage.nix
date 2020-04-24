{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "lens-time"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "tatsuya.touma@gmail.com";
      author = "Tatsuya Touma";
      homepage = "";
      url = "";
      synopsis = "lens for Data.Time";
      description = "lens for Data.Time\nCurrently, It works UTCTime only.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }