{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "BufferedSocket"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "tomas.o.more@gmail.com";
      author = "Tomas Möre";
      homepage = "";
      url = "";
      synopsis = "BROKEN VERSION";
      description = "THIS VERSION IS BROKEN DO NOT USE!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          ];
        buildable = true;
        };
      };
    }