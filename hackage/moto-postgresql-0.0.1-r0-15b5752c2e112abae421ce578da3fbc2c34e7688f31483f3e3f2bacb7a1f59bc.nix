{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "moto-postgresql"; version = "0.0.1"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "ren@ren!zone";
      author = "Renzo Carbonara";
      homepage = "";
      url = "";
      synopsis = "PostgreSQL-based migrations registry for moto.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."postgresql-simple" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-simple"))
          (hsPkgs."moto" or ((hsPkgs.pkgs-errors).buildDepError "moto"))
          (hsPkgs."safe-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "safe-exceptions"))
          ];
        buildable = true;
        };
      };
    }