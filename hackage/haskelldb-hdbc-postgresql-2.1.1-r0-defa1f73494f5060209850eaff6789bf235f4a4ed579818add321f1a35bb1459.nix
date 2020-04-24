{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "haskelldb-hdbc-postgresql"; version = "2.1.1"; };
      license = "BSD-3-Clause";
      copyright = "The authors";
      maintainer = "haskelldb-users@lists.sourceforge.net";
      author = "Daan Leijen, Conny Andersson, Martin Andersson, Mary Bergman, Victor Blomqvist, Bjorn Bringert, Anders Hockersten, Torbjorn Martin, Jeremy Shaw";
      homepage = "https://github.com/m4dc4p/haskelldb";
      url = "";
      synopsis = "HaskellDB support for the HDBC PostgreSQL driver.";
      description = "HaskellDB requires this driver if HDBC will be used to connect to a PostgreSQL database.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."haskelldb" or ((hsPkgs.pkgs-errors).buildDepError "haskelldb"))
          (hsPkgs."haskelldb-hdbc" or ((hsPkgs.pkgs-errors).buildDepError "haskelldb-hdbc"))
          (hsPkgs."HDBC" or ((hsPkgs.pkgs-errors).buildDepError "HDBC"))
          (hsPkgs."HDBC-postgresql" or ((hsPkgs.pkgs-errors).buildDepError "HDBC-postgresql"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "DBDirect-hdbc-postgresql" = {
          libs = [ (pkgs."pq" or ((hsPkgs.pkgs-errors).sysDepError "pq")) ];
          buildable = true;
          };
        };
      };
    }