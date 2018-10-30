{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "haskell-exp-parser";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015, Emil Axelsson";
      maintainer = "emax@chalmers.se";
      author = "Emil Axelsson";
      homepage = "https://github.com/emilaxelsson/haskell-exp-parser";
      url = "";
      synopsis = "Simple parser parser from Haskell to TemplateHaskell expressions";
      description = "This package defines a simple parser for a subset of Haskell expressions and patterns to the TemplateHaskell AST.\n\nIt provides a very lightweight alternative to the functions @parseExp@ and @parsePat@ from <http://hackage.haskell.org/package/haskell-src-meta>.\n\nThe following expressions are currently supported:\n\n* Variables\n* Integer and string literals\n* Prefix function application\n* Lists and tuples\n\nThe following patterns are currently supported:\n\n* Variables";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
        ];
      };
      tests = {
        "Tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell-exp-parser)
            (hsPkgs.template-haskell)
          ];
        };
      };
    };
  }