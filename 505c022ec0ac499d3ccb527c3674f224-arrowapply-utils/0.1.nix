{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "arrowapply-utils";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(C) 2012 The University of Auckland";
        maintainer = "ak.miller@auckland.ac.nz";
        author = "Andrew Miller";
        homepage = "";
        url = "";
        synopsis = "Utilities for working with ArrowApply instances more naturally";
        description = "This package provides useful utilities for making use of the opportunities the ArrowApply class provides, such as the ability to work with Arrows as Monads, and use liftM-like functions.";
        buildType = "Simple";
      };
      components = {
        arrowapply-utils = {
          depends  = [ hsPkgs.base ];
        };
      };
    }