{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "timestamper"; version = "1.0.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "kyle@metacircular.net";
      author = "K. Isom";
      homepage = "https://github.com/kisom/timestamper";
      url = "";
      synopsis = "Read standard input and prepend each line with a timestamp";
      description = "timestamper is a utility to apply timestamps to\nstandard input.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "timestamper" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }