{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sqlcli-odbc"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 Mihai Giurgeanu";
      maintainer = "mihai.giurgeanu@gmail.com";
      author = "Mihai Giurgeanu";
      homepage = "https://hub.darcs.net/mihaigiurgeanu/sqlcli-odbc";
      url = "";
      synopsis = "ODBC specific definitions to be used by SQL CLI clients.";
      description = "Access databases through ODBC using SQLCLI compatible functions.\nThe package adds ODBC specific definition to the sqlcli package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."logging" or ((hsPkgs.pkgs-errors).buildDepError "logging"))
          (hsPkgs."sqlcli" or ((hsPkgs.pkgs-errors).buildDepError "sqlcli"))
          ];
        buildable = true;
        };
      };
    }