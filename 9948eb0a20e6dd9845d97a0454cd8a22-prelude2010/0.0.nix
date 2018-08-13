{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "prelude2010";
        version = "0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@henning-thielemann.de";
      author = "Henning Thielemann";
      homepage = "";
      url = "";
      synopsis = "Provide Prelude with fixed content across GHC versions";
      description = "This package helps you to write code that works with GHC before 7.10\nand starting with 7.10.\nIt provides the content of the \"Prelude2010\" module as \"Prelude\".\nThis way you can replace a dependency on @base@ by\n\n> Build-Depends: base-noprelude ==4.*, prelude2010 ==0.*\n\nin your Cabal file and you do not have to alter modules.\n\nAttention:\nWhile this works for package builds,\nGHCi will complain about conflicting Prelude modules.\nAfter installation of this package, you should run\n\n> \$ ghc-pkg hide prelude2010";
      buildType = "Simple";
    };
    components = {
      "prelude2010" = {
        depends  = [
          (hsPkgs.prelude-compat)
        ];
      };
    };
  }