{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "error-message";
          version = "1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009 Gregory Crosswhite";
        maintainer = "gcross@phys.washington.edu";
        author = "Gregory Crosswhite";
        homepage = "http://github.com/gcross/error-message";
        url = "";
        synopsis = "Composable error messages.";
        description = "This philosophy behind this package is that it is often better to find\nout all of the errors that have occured in a computation and report them\nsimultaneously, rather than aborting as soon as the first error is\nencountered.  Towards this end, this module supplies a type of\n/combinable error messages/ so that all of the errors from subcomputations\ncan be gathered and presented together.";
        buildType = "Simple";
      };
      components = {
        error-message = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.either-unwrap
            hsPkgs.InfixApplicative
            hsPkgs.ansi-wl-pprint
          ];
        };
      };
    }