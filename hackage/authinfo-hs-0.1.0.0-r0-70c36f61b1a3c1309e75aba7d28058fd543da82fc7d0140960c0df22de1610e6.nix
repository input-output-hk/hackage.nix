{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "authinfo-hs"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "robgssp@gmail.com";
      author = "Robert Glossop";
      homepage = "http://github.com/robgssp/authinfo-hs";
      url = "";
      synopsis = "Password querying for .authinfo";
      description = "A .authinfo querier";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          ];
        buildable = true;
        };
      };
    }