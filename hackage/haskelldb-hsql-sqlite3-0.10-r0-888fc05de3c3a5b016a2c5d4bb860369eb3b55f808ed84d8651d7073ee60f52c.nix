{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "haskelldb-hsql-sqlite3"; version = "0.10"; };
      license = "BSD-3-Clause";
      copyright = "The authors";
      maintainer = "haskelldb-users@lists.sourceforge.net";
      author = "Daan Leijen, Conny Andersson, Martin Andersson, Mary Bergman, Victor Blomqvist, Bjorn Bringert, Anders Hockersten, Torbjorn Martin, Jeremy Shaw";
      homepage = "";
      url = "";
      synopsis = "HaskellDB support for the HSQL SQLite driver.";
      description = "";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."haskelldb" or ((hsPkgs.pkgs-errors).buildDepError "haskelldb"))
          (hsPkgs."haskelldb-hsql" or ((hsPkgs.pkgs-errors).buildDepError "haskelldb-hsql"))
          (hsPkgs."hsql" or ((hsPkgs.pkgs-errors).buildDepError "hsql"))
          (hsPkgs."hsql-sqlite3" or ((hsPkgs.pkgs-errors).buildDepError "hsql-sqlite3"))
          ];
        buildable = true;
        };
      };
    }