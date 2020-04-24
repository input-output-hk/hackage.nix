{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "Configger"; version = "0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "nate@natesoares.com";
      author = "Nate Soares";
      homepage = "";
      url = "";
      synopsis = "Parse config files";
      description = "Parses a config file into [(String, [(String, String)])]";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."Dangerous" or ((hsPkgs.pkgs-errors).buildDepError "Dangerous"))
          (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          ];
        buildable = true;
        };
      };
    }