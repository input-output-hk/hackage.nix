{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hsql-mysql"; version = "1.8.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Chris Done <chrisdone@gmail.com>";
      author = "Krasimir Angelov <kr.a...@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "MySQL driver for HSQL.";
      description = "MySQL driver for HSQL.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hsql" or ((hsPkgs.pkgs-errors).buildDepError "hsql"))
          (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
          ];
        libs = if system.isWindows || system.isWindows
          then [
            (pkgs."libmysql" or ((hsPkgs.pkgs-errors).sysDepError "libmysql"))
            ]
          else [
            (pkgs."mysqlclient" or ((hsPkgs.pkgs-errors).sysDepError "mysqlclient"))
            ];
        buildable = true;
        };
      };
    }