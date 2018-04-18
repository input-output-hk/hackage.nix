{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "unbound";
          version = "0.2.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Brent Yorgey <byorgey@cis.upenn.edu>\nStephanie Weirich <sweirich@cis.upenn.edu>";
        author = "Stephanie Weirich";
        homepage = "http://code.google.com/p/replib/";
        url = "";
        synopsis = "Generic support for programming with names and binders";
        description = "Specify the binding structure of your data type with an\nexpressive set of type combinators, and Unbound\nhandles the rest!  Automatically derives\nalpha-equivalence, free variable calculation,\ncapture-avoiding substitution, and more. See\n\"Unbound.LocallyNameless\" to get started.";
        buildType = "Simple";
      };
      components = {
        unbound = {
          depends  = [
            hsPkgs.base
            hsPkgs.RepLib
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.containers
          ];
        };
      };
    }