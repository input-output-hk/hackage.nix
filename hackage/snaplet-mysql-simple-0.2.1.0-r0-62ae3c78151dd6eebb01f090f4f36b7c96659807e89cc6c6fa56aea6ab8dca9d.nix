{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "snaplet-mysql-simple"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "me@ibotty.net";
      author = "Tobias Florek";
      homepage = "https://github.com/ibotty/snaplet-mysql-simple";
      url = "";
      synopsis = "mysql-simple snaplet for the Snap Framework";
      description = "This snaplet contains support for using the MariaDB and MySQL\ndatabase with a Snap Framework application via the mysql-simple\npackage. It also includes an untested authentication backend.\nHeavily based on snaplet-postgresql-simple by Doug Beardsley.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."clientsession" or ((hsPkgs.pkgs-errors).buildDepError "clientsession"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."configurator" or ((hsPkgs.pkgs-errors).buildDepError "configurator"))
          (hsPkgs."errors" or ((hsPkgs.pkgs-errors).buildDepError "errors"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."MonadCatchIO-transformers" or ((hsPkgs.pkgs-errors).buildDepError "MonadCatchIO-transformers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."mysql-simple" or ((hsPkgs.pkgs-errors).buildDepError "mysql-simple"))
          (hsPkgs."mysql" or ((hsPkgs.pkgs-errors).buildDepError "mysql"))
          (hsPkgs."resource-pool-catchio" or ((hsPkgs.pkgs-errors).buildDepError "resource-pool-catchio"))
          (hsPkgs."snap" or ((hsPkgs.pkgs-errors).buildDepError "snap"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      };
    }