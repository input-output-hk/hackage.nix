{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "io-memoize";
          version = "1.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2012 Dan Burton";
        maintainer = "danburton.email@gmail.com";
        author = "Dan Burton";
        homepage = "";
        url = "";
        synopsis = "Memoize IO actions";
        description = "Transform an IO action into a similar IO action\nthat performs the original action only once.\n\nYou can choose to perform the original action\nin one of three ways:\n\n(1) lazily (might never be performed)\n\n(2) eagerly\n\n(3) concurrently (eager)\n\nSpecial thanks to shachaf and headprogrammingczar from #haskell irc\nfor helping me reason about the behavior of this library.";
        buildType = "Simple";
      };
      components = {
        io-memoize = {
          depends  = [
            hsPkgs.base
            hsPkgs.spawn
          ];
        };
      };
    }