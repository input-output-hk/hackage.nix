{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "buildable";
          version = "0.1.0.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Ivan.Miljenovic@gmail.com";
        author = "Ivan Lazar Miljenovic";
        homepage = "";
        url = "";
        synopsis = "Typeclass for builders of linear data structures";
        description = "Various linear data structures can be expensive to construct in a\nrepetitive fashion.  For example, to append a single value to the end\nof a list is @O(n)@, and as such doing so repeatedly is recommended\nagainst.\n\nAs such, to efficiently construct such structures we have the notion\nof a /builder/.  This can be used to more efficiently prepend and\nappend values, and at the end we \\\"run\\\" the builder to construct the\noverall value.\n\nThis module provides an abstraction over various builders for specific\ndata structures.  It also aims to minimise the number of functions\nrequired to add various values to the builder by using a typeclass and\nnewtype wrappers.\n\nTo construct a value from it's builder:\n\n1. Start with either @'mempty'@ for an empty 'Builder', or if you\nhave an initial value use @'fromValue'@.\n\n2. Add initial values to the front or back using 'prepend' \\/ '<|'\nor 'append' \\/ '|>' respectively.\n\n3. Once you've finished constructing your builder, create your\nfinal value with 'build'.\n\n/Note/: all instances are defined for both strict and lazy\n@ByteString@ and @Text@ values.";
        buildType = "Simple";
      };
      components = {
        buildable = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.dlist
            hsPkgs.text
          ];
        };
      };
    }