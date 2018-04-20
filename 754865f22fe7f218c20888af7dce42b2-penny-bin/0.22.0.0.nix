{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      debug = false;
      build-penny = true;
      build-selloff = true;
      build-diff = true;
      build-reprint = true;
      build-reconcile = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "penny-bin";
          version = "0.22.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2012-2013 Omari Norman";
        maintainer = "omari@smileystation.com";
        author = "Omari Norman";
        homepage = "http://www.github.com/massysett/penny";
        url = "";
        synopsis = "Deprecated - use penny package instead";
        description = "This package is now deprecated.  Use the penny package instead.";
        buildType = "Simple";
      };
      components = {
        exes = {
          penny = {
            depends  = [
              hsPkgs.base
              hsPkgs.penny-lib
            ];
          };
          penny-selloff = {
            depends  = [
              hsPkgs.base
              hsPkgs.penny-lib
              hsPkgs.explicit-exception
              hsPkgs.containers
              hsPkgs.semigroups
              hsPkgs.text
              hsPkgs.parsec
              hsPkgs.multiarg
              hsPkgs.transformers
            ];
          };
          penny-diff = {
            depends  = [
              hsPkgs.base
              hsPkgs.penny-lib
              hsPkgs.text
              hsPkgs.multiarg
              hsPkgs.explicit-exception
            ];
          };
          penny-reprint = {
            depends  = [
              hsPkgs.base
              hsPkgs.multiarg
              hsPkgs.penny-lib
              hsPkgs.pretty-show
              hsPkgs.text
            ];
          };
          penny-reconcile = {
            depends  = [
              hsPkgs.base
              hsPkgs.penny-lib
              hsPkgs.text
              hsPkgs.multiarg
              hsPkgs.explicit-exception
            ];
          };
        };
      };
    }