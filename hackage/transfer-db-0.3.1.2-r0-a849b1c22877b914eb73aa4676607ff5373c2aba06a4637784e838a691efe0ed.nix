{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "transfer-db"; version = "0.3.1.2"; };
      license = "BSD-3-Clause";
      copyright = "2017 Mihai Giurgeanu";
      maintainer = "mihai.giurgeanu@gmail.com";
      author = "Mihai Giurgeanu";
      homepage = "http://hub.darcs.net/mihaigiurgeanu/transfer-db";
      url = "";
      synopsis = "ODBC database transfer";
      description = "Simple ODBC application that transfers data between 2 databases.\nIt is based on `sqlcli` package that should be installed with\nthe `odbc` flag set.\nTo build the application, you need odbc libraries installed. On\nWindows, they are installed by default. On unix, you should use\n[unixODBC](http://www.unixodbc.org) package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."sqlcli" or ((hsPkgs.pkgs-errors).buildDepError "sqlcli"))
          (hsPkgs."sqlcli-odbc" or ((hsPkgs.pkgs-errors).buildDepError "sqlcli-odbc"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."logging" or ((hsPkgs.pkgs-errors).buildDepError "logging"))
          (hsPkgs."store" or ((hsPkgs.pkgs-errors).buildDepError "store"))
          (hsPkgs."store-core" or ((hsPkgs.pkgs-errors).buildDepError "store-core"))
          (hsPkgs."th-utilities" or ((hsPkgs.pkgs-errors).buildDepError "th-utilities"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."clock" or ((hsPkgs.pkgs-errors).buildDepError "clock"))
          ];
        buildable = true;
        };
      exes = {
        "transfer-db" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."console-program" or ((hsPkgs.pkgs-errors).buildDepError "console-program"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."logging" or ((hsPkgs.pkgs-errors).buildDepError "logging"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."clock" or ((hsPkgs.pkgs-errors).buildDepError "clock"))
            (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
            (hsPkgs."cassava" or ((hsPkgs.pkgs-errors).buildDepError "cassava"))
            (hsPkgs."sqlcli" or ((hsPkgs.pkgs-errors).buildDepError "sqlcli"))
            (hsPkgs."sqlcli-odbc" or ((hsPkgs.pkgs-errors).buildDepError "sqlcli-odbc"))
            (hsPkgs."transfer-db" or ((hsPkgs.pkgs-errors).buildDepError "transfer-db"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hspec-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."store" or ((hsPkgs.pkgs-errors).buildDepError "store"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."cpu" or ((hsPkgs.pkgs-errors).buildDepError "cpu"))
            (hsPkgs."transfer-db" or ((hsPkgs.pkgs-errors).buildDepError "transfer-db"))
            (hsPkgs."sqlcli" or ((hsPkgs.pkgs-errors).buildDepError "sqlcli"))
            ];
          buildable = true;
          };
        };
      };
    }