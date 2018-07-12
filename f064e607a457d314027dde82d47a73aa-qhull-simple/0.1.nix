{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "qhull-simple";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Bindings: 2013 Gard Spreemann. Qhull itself: 1992-2012 C. B. Arber and The Geometry Center, University of Minnesota.";
        maintainer = "Gard Spreemann <gspreemann@gmail.com>";
        author = "Gard Spreemann";
        homepage = "http://nonempty.org/software/haskell-qhull-simple";
        url = "";
        synopsis = "Simple bindings to Qhull, a library for computing convex hulls";
        description = "Simple bindings to Qhull, a C library (<http://qhull.org>) for computing convex hulls. Currently, only convex hull computation in the @Qt@ and/or @Qx@ modes is supported.\n\nThe Qhull library itself is not included, as I consider it a dependency. Cabal's @--extra-include-dirs@ and @--extra-lib-dirs@ can be used if the Qhull headers and shared objects are not in GCC's search path.\n\nHackage probably fails to build the Haddock documentation since Qhull itself is missing. The\ndocumentation can be viewed at <http://nonempty.org/software/haskell-qhull-simple/>.\n\nQhull itself is copyright 1992-2012 C. B. Arber and The Geometry Center, University of Minnesota.\n\nNotes:\n\n* The current version has only been tested /very lightly/, and only with version 2009.1 of Qhull.\n\n* The API will probably change drastically in future versions, especially to be more flexible with regards to input data formats.\n\nChanges in version 0.1:\n\n* Initial release.";
        buildType = "Simple";
      };
      components = {
        "qhull-simple" = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
          ];
          libs = [
            pkgs.qhull
            pkgs.pthread
          ];
        };
      };
    }