{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      debug = false;
      test = false;
      incabal = true;
      buildlib = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "penny-lib";
          version = "0.22.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2012-2013 Omari Norman.";
        maintainer = "omari@smileystation.com";
        author = "Omari Norman";
        homepage = "http://www.github.com/massysett/penny";
        url = "";
        synopsis = "Deprecated - use penny package instead";
        description = "This package is now deprecated.  Use the penny package instead.";
        buildType = "Simple";
      };
      components = {
        penny-lib = {
          depends  = [
            hsPkgs.base
            hsPkgs.action-permutations
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.containers
            hsPkgs.explicit-exception
            hsPkgs.matchers
            hsPkgs.multiarg
            hsPkgs.ofx
            hsPkgs.old-locale
            hsPkgs.parsec
            hsPkgs.prednote
            hsPkgs.pretty-show
            hsPkgs.rainbow
            hsPkgs.semigroups
            hsPkgs.split
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
          ];
        };
        exes = {
          penny-test = {
            depends  = pkgs.lib.optionals _flags.test [
              hsPkgs.QuickCheck
              hsPkgs.random-shuffle
              hsPkgs.base
              hsPkgs.action-permutations
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.cereal
              hsPkgs.containers
              hsPkgs.explicit-exception
              hsPkgs.matchers
              hsPkgs.multiarg
              hsPkgs.ofx
              hsPkgs.old-locale
              hsPkgs.parsec
              hsPkgs.prednote
              hsPkgs.pretty-show
              hsPkgs.rainbow
              hsPkgs.semigroups
              hsPkgs.split
              hsPkgs.text
              hsPkgs.time
              hsPkgs.transformers
            ];
          };
          penny-gibberish = {
            depends  = pkgs.lib.optionals _flags.test [
              hsPkgs.QuickCheck
              hsPkgs.random-shuffle
              hsPkgs.random
              hsPkgs.base
              hsPkgs.action-permutations
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.cereal
              hsPkgs.containers
              hsPkgs.explicit-exception
              hsPkgs.matchers
              hsPkgs.multiarg
              hsPkgs.ofx
              hsPkgs.old-locale
              hsPkgs.parsec
              hsPkgs.prednote
              hsPkgs.pretty-show
              hsPkgs.rainbow
              hsPkgs.semigroups
              hsPkgs.split
              hsPkgs.text
              hsPkgs.time
              hsPkgs.transformers
            ];
          };
        };
      };
    }