{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      mysql = false;
      sqlite = false;
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "HXQ";
        version = "0.10.0";
      };
      license = "BSD-3-Clause";
      copyright = "2008, Leonidas Fegaras";
      maintainer = "fegaras@cse.uta.edu";
      author = "Leonidas Fegaras";
      homepage = "http://lambda.uta.edu/HXQ/";
      url = "";
      synopsis = "A Compiler from XQuery to Haskell";
      description = "HXQ is a fast and space-efficient compiler from XQuery (the standard\nquery language for XML) to embedded Haskell code. The translation is\nbased on Haskell templates. It also provides an interpreter for\nevaluating XQueries from input and an optional database connectivity\nusing HDBC with MySQL/ODBC or sqlite3.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.array)
          (hsPkgs.template-haskell)
          (hsPkgs.mtl)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.readline)) ++ (if flags.mysql
          then [
            (hsPkgs.HDBC)
            (hsPkgs.HDBC-odbc)
          ]
          else pkgs.lib.optionals (flags.sqlite) [
            (hsPkgs.HDBC)
            (hsPkgs.HDBC-sqlite3)
          ]);
      };
      exes = {
        "xquery" = {
          depends  = ([
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.array)
            (hsPkgs.template-haskell)
            (hsPkgs.mtl)
          ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.readline)) ++ (if flags.mysql
            then [
              (hsPkgs.HDBC)
              (hsPkgs.HDBC-odbc)
            ]
            else pkgs.lib.optionals (flags.sqlite) [
              (hsPkgs.HDBC)
              (hsPkgs.HDBC-odbc)
            ]);
        };
      };
    };
  }