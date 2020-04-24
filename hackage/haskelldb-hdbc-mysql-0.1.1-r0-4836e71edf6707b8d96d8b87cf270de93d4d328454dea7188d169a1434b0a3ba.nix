{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "haskelldb-hdbc-mysql"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "The authors";
      maintainer = "haskelldb-users@lists.sourceforge.net";
      author = "Andrew Miller, Daan Leijen, Conny Andersson, Martin Andersson, Mary Bergman, Victor Blomqvist, Bjorn Bringert, Anders Hockersten, Torbjorn Martin, Jeremy Shaw";
      homepage = "";
      url = "";
      synopsis = "HaskellDB support for the HDBC MySQL driver.";
      description = "haskelldb-hdbc-mysql allows the HDBC-mysql package to be used from HaskellDB. This means HaskellDB can be used with MySQL, without going through ODBC.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."haskelldb" or ((hsPkgs.pkgs-errors).buildDepError "haskelldb"))
          (hsPkgs."haskelldb-hdbc" or ((hsPkgs.pkgs-errors).buildDepError "haskelldb-hdbc"))
          (hsPkgs."HDBC" or ((hsPkgs.pkgs-errors).buildDepError "HDBC"))
          (hsPkgs."HDBC-mysql" or ((hsPkgs.pkgs-errors).buildDepError "HDBC-mysql"))
          ];
        buildable = true;
        };
      exes = { "DBDirect-hdbc-mysql" = { buildable = true; }; };
      };
    }