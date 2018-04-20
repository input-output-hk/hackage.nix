{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "select";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2012 Gard Spreemann";
        maintainer = "Gard Spreemann <gspreemann@gmail.com>";
        author = "Gard Spreemann";
        homepage = "http://nonempty.org/software/haskell-select";
        url = "";
        synopsis = "Give the select(2) POSIX function a simple STM interface";
        description = "While tinkering on a project, I frequently found myself\nhaving to make FFI calls to @select(2)@. This package is an attempt\nreduce the boilerplate I needed to do that. While at it, I took the\nopportunity to have what @select@ returns put in a 'TMVar'.\n\nThe package has three parts:\n\n[\"System.Posix.IO.Select\"] just wraps @select@.\n\n[\"Control.Concurrent.STM.TMVarIO\"] and \"Control.Concurrent.MVarIO\" put the\nreturn value of IO actions into a 'TMVar' or an 'MVar', respectively.\n\n[\"System.Posix.IO.Select.STM\"] and \"System.Posix.IO.Select.MVar\" do the above for\n@select@.\n\n/NOTE/: I feel I'm occupying prime namespace realestate with a package name\nlike select. I'll happily let myself be chased away if anybody else wants\nto use this package name. Let me know.\n\n/CAVEAT/: I'm not an experienced Haskeller, and this is my first foray into\nFFI in general.";
        buildType = "Simple";
      };
      components = {
        select = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.stm
          ];
        };
      };
    }