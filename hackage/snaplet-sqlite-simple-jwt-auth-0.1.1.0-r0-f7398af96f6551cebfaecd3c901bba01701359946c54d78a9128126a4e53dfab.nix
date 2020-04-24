{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "snaplet-sqlite-simple-jwt-auth";
        version = "0.1.1.0";
        };
      license = "BSD-3-Clause";
      copyright = "2016 Janne Hellsten";
      maintainer = "jjhellst@gmail.com";
      author = "Janne Hellsten";
      homepage = "https://github.com/nurpax/snaplet-sqlite-simple-jwt-auth#readme";
      url = "";
      synopsis = "Snaplet for JWT authentication with snaplet-sqlite-simple";
      description = "JWT authentication snaplet for snaplet-sqlite-simple.\n\nVery much a work-in-progress, use at your own risk.\n\nMain documentation: <docs/Snap-Snaplet-SqliteSimple-JwtAuth Snap.Snaplet.SqliteSimple.JwtAuth>\n\nFor more info, browse to <http://github.com/nurpax/snaplet-sqlite-simple-jwt-auth> for examples & more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bcrypt" or ((hsPkgs.pkgs-errors).buildDepError "bcrypt"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."clientsession" or ((hsPkgs.pkgs-errors).buildDepError "clientsession"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."jwt" or ((hsPkgs.pkgs-errors).buildDepError "jwt"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."snap" or ((hsPkgs.pkgs-errors).buildDepError "snap"))
          (hsPkgs."snap-core" or ((hsPkgs.pkgs-errors).buildDepError "snap-core"))
          (hsPkgs."snaplet-sqlite-simple" or ((hsPkgs.pkgs-errors).buildDepError "snaplet-sqlite-simple"))
          (hsPkgs."sqlite-simple" or ((hsPkgs.pkgs-errors).buildDepError "sqlite-simple"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
          (hsPkgs."errors" or ((hsPkgs.pkgs-errors).buildDepError "errors"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      };
    }