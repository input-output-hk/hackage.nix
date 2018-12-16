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
      specVersion = "1.2";
      identifier = {
        name = "hstidy";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Matt Morrow";
      maintainer = "Matt Morrow <mjm2002@gmail.com>";
      author = "Matt Morrow";
      homepage = "http://code.haskell.org/~morrow/code/haskell/hstidy";
      url = "";
      synopsis = "Takes haskell source on stdin, parses it, then\nprettyprints it to stdout.";
      description = "@hstidy@ reads haskell source from stdin, then\nparses and prettyprints it to stdout. @hstidy@ accepts not\nonly modules as a parseable unit, but expressions\nand patterns as well. Haddock docs are located at\n<http://code.haskell.org/~morrow/code/haskell/hstidy/docs/>";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hstidy" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell-src-exts)
          ];
        };
      };
    };
  }