{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "error-message";
          version = "1.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009-2010 Gregory Crosswhite";
        maintainer = "gcross@phys.washington.edu";
        author = "Gregory Crosswhite";
        homepage = "http://github.com/gcross/error-message";
        url = "";
        synopsis = "Composable error messages.";
        description = "This philosophy behind this package is that it is often better to find\nout all of the errors that have occured in a computation and report them\nsimultaneously, rather than aborting as soon as the first error is\nencountered.  Towards this end, this module supplies a type of\n/combinable error messages/ so that all of the errors from subcomputations\ncan be gathered and presented together.\n\nNew in version 1.1:  Removed Monoid instance for Doc (it should now be supplied by ansi-wl-pprint), added ErrorMessageOr type alias.";
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