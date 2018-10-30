{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      testing = false;
      server = true;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "scion";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Thomas Schilling <nominolo@googlemail.com>";
      author = "Thomas Schilling <nominolo@googlemail.com>";
      homepage = "http://github.com/nominolo/scion";
      url = "";
      synopsis = "Haskell IDE library";
      description = "Scion is a Haskell library that aims to implement those parts of a\nHaskell IDE which are independent of a particular front-end.  Scion\nis based on the GHC API and Cabal.  It provides both a Haskell API and\na server for non-Haskell clients such as Emacs and Vim.\n\nSee the homepage <http://code.google.com/p/scion-lib> and the README\n<http://github.com/nominolo/scion/blob/master/README.markdown> for\nmore information.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.ghc)
          (hsPkgs.ghc-paths)
          (hsPkgs.ghc-syb)
          (hsPkgs.hslogger)
          (hsPkgs.json)
          (hsPkgs.multiset)
          (hsPkgs.time)
          (hsPkgs.uniplate)
        ] ++ pkgs.lib.optional (flags.testing) (hsPkgs.QuickCheck);
      };
      exes = {
        "scion-server" = {
          depends  = ([
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.ghc)
            (hsPkgs.ghc-paths)
            (hsPkgs.ghc-syb)
            (hsPkgs.hslogger)
            (hsPkgs.json)
            (hsPkgs.multiset)
            (hsPkgs.time)
          ] ++ pkgs.lib.optionals (flags.server) [
            (hsPkgs.bytestring)
            (hsPkgs.network)
            (hsPkgs.network-bytestring)
            (hsPkgs.utf8-string)
          ]) ++ pkgs.lib.optional (flags.testing) (hsPkgs.QuickCheck);
        };
      };
    };
  }