{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "strict-concurrency";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2007-8 Don Stewart";
        maintainer = "Don Stewart <dons@galois.com>";
        author = "Don Stewart <dons@galois.com>";
        homepage = "http://code.haskell.org/~dons/code/strict-concurrency";
        url = "";
        synopsis = "Strict concurrency abstractions";
        description = "This package provides head normal form strict versions of some\nstandard Haskell concurrency abstractions (MVars,Chans), which\nprovide control over where evaluation takes place not offered by\nthe default lazy types. This may be useful for deciding when and\nwhere evaluation occurs, leading to improved time or space use,\ndepending on the circumstances.";
        buildType = "Simple";
      };
      components = {
        strict-concurrency = {
          depends  = [
            hsPkgs.base
            hsPkgs.parallel
          ];
        };
      };
    }