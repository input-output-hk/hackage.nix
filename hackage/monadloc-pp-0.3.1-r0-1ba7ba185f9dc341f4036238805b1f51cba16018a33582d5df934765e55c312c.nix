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
      specVersion = "1.6";
      identifier = {
        name = "monadloc-pp";
        version = "0.3.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "pepeiborra@gmail.com";
      author = "Pepe Iborra";
      homepage = "http://github.com/pepeiborra/monadloc-pp";
      url = "";
      synopsis = "A preprocessor for generating monadic call traces";
      description = "The package @monadloc@ defines a class for monads which can keep a monadic call trace.\n\n* See the blog post <http://pepeiborra.wordpress.com/2009/11/01/monadic-stack-traces-that-make-a-lot-of-sense/> for more information.\n\nThis package provides a preprocessor that inserts calls\nto \"Control.Monad.Loc.withLoc\" before every monadic statement in a module.\nTo invoke the preprocessor, add the pragma @OPTIONS_GHC -F -pgmF MonadLoc@  at the top of your Haskell files  together with an import for the \"Control.Monad.Loc\" module\n";
      buildType = "Simple";
    };
    components = {
      exes = {
        "MonadLoc" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.pretty)
            (hsPkgs.syb)
            (hsPkgs.monadloc)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }