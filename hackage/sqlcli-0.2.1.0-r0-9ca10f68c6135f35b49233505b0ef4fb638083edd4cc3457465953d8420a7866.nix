{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { odbc = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "sqlcli"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Mihai Giurgeanu";
      maintainer = "mihai.giurgean@gmail.com";
      author = "Mihai Giurgeanu";
      homepage = "http://hub.darcs.net/mihaigiurgeanu/sqlcli";
      url = "";
      synopsis = "High quality SQL/CLI and ODBC C function bindings.";
      description = "See [NEWS](https://hub.darcs.net/mihaigiurgeanu/sqlcli/browse/NEWS)\nfor the ChangeLog.\nProvides bindings to all the SQL/CLI C API standard.\nSQL/CLI C API is a subset of ODBC.\nThis package also contains Haskell wrapers to the foreign C calls and\nutilities to make using the SQL/CLI easier for the Haskell\nprogrammer.\nYou can use this to acces any database through ODBC.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."logging" or ((hsPkgs.pkgs-errors).buildDepError "logging"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        libs = (pkgs.lib).optionals (flags.odbc) (if system.isWindows
          then [
            (pkgs."odbc32" or ((hsPkgs.pkgs-errors).sysDepError "odbc32"))
            ]
          else [ (pkgs."odbc" or ((hsPkgs.pkgs-errors).sysDepError "odbc")) ]);
        buildable = true;
        };
      };
    }