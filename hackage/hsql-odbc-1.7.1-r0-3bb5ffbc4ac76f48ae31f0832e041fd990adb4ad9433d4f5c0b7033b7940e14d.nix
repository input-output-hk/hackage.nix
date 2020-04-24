{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "hsql-odbc"; version = "1.7.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nick.rudnick@googlemail.com";
      author = "Krasimir Angelov <kr.angelov@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "";
      description = "ODBC driver for HSQL.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hsql" or ((hsPkgs.pkgs-errors).buildDepError "hsql"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          ];
        libs = [ (pkgs."odbc" or ((hsPkgs.pkgs-errors).sysDepError "odbc")) ];
        buildable = true;
        };
      };
    }