{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "haskelldb-hsql-oracle"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "The authors";
      maintainer = "haskelldb-users@lists.sourceforge.net";
      author = "Daan Leijen, Conny Andersson, Martin Andersson, Mary Bergman, Victor Blomqvist, Bjorn Bringert, Anders Hockersten, Torbjorn Martin, Jeremy Shaw, Henning Thielemann";
      homepage = "https://github.com/m4dc4p/haskelldb";
      url = "";
      synopsis = "HaskellDB support for the HSQL Oracle driver.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."haskelldb" or ((hsPkgs.pkgs-errors).buildDepError "haskelldb"))
          (hsPkgs."haskelldb-hsql" or ((hsPkgs.pkgs-errors).buildDepError "haskelldb-hsql"))
          (hsPkgs."hsql" or ((hsPkgs.pkgs-errors).buildDepError "hsql"))
          (hsPkgs."hsql-oracle" or ((hsPkgs.pkgs-errors).buildDepError "hsql-oracle"))
          ];
        buildable = true;
        };
      exes = { "DBDirect-hsql-oracle" = { buildable = true; }; };
      };
    }