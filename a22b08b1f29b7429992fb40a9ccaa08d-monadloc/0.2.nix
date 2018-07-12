{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      syb-in-base = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "monadloc";
          version = "0.2";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "pepeiborra@gmail.com";
        author = "Pepe Iborra";
        homepage = "http://github.com/pepeiborra/monadloc";
        url = "";
        synopsis = "A class for monads which can keep a stack trace";
        description = "This package defines a class for monads which can keep a monadic call trace.\n\n. See http://pepeiborra.posterous.com/monadic-stack-traces-that-make-a-lot-of-sense for more information.\n\nA preprocessor is provided which can insert calls\nto withLoc before every monadic statement in a module.\n\nTo invoke the preprocessor, add the following pragma at the top of a source file:\n\n> {-# OPTIONS_GHC -F -pgmF MonadLoc #-}\n\ntogether with an import for the @Control.Monad.Loc@ module\n\nThis package provides no implementation of the MonadLoc interface.\nCurrently the only package that does so is \"control-monad-exception\",\nbut any other package can implement it and provide monadic call traces.";
        buildType = "Simple";
      };
      components = {
        "monadloc" = {
          depends  = [
            hsPkgs.pretty
            hsPkgs.template-haskell
          ] ++ (if _flags.syb-in-base
            then [ hsPkgs.base ]
            else [
              hsPkgs.base
              hsPkgs.syb
            ]);
        };
        exes = {
          "MonadLoc" = {
            depends  = [
              hsPkgs.haskell-src-exts
            ];
          };
        };
      };
    }