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
      base3 = false;
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "HXQ";
        version = "0.20.1";
      };
      license = "BSD-3-Clause";
      copyright = "2008-2016 Leonidas Fegaras";
      maintainer = "Leonidas Fegaras <fegaras@cse.uta.edu>";
      author = "Leonidas Fegaras";
      homepage = "http://lambda.uta.edu/HXQ/";
      url = "";
      synopsis = "A Compiler from XQuery to Haskell";
      description = "HXQ is a fast and space-efficient compiler from XQuery (the standard\nquery language for XML) to embedded Haskell code. The translation is\nbased on Haskell templates. It also provides an interpreter for\nevaluating XQueries from input and an optional database connectivity\nusing HDBC with MySQL/ODBC or sqlite3.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.array)
          (hsPkgs.regex-base)
          (hsPkgs.regex-compat)
          (hsPkgs.template-haskell)
          (hsPkgs.mtl)
          (hsPkgs.haskeline)
          (hsPkgs.HTTP)
        ] ++ [
          (hsPkgs.base)
        ]) ++ (if flags.mysql
          then [
            (hsPkgs.HDBC)
            (hsPkgs.HDBC-odbc)
          ]
          else pkgs.lib.optionals (flags.sqlite) [
            (hsPkgs.HDBC)
            (hsPkgs.HDBC-sqlite3)
          ]);
      };
    };
  }