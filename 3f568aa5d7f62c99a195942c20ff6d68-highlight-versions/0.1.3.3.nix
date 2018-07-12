{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "highlight-versions";
          version = "0.1.3.3";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright 2012 Brent Yorgey";
        maintainer = "byorgey@cis.upenn.edu";
        author = "Brent Yorgey";
        homepage = "";
        url = "";
        synopsis = "Highlight package versions which differ from the latest\nversion on Hackage";
        description = "This package provides an executable which reads from\nstdin and outputs the same thing to stdout,\nexcept that any lines which look like package\nidentifiers (e.g. foo-0.3.2) are highlighted if\nthe version does not match the latest version on\nHackage: red if the version is less than the\nversion on Hackage, green if equal,\nor cyan if greater.  In\naddition, when the versions are unequal the\nHackage version is shown in blue.\n\nIn particular, it can be useful to pipe the\noutput of @cabal(-dev) install --dry-run@ through\nthis program, to aid in checking the install\nplan. It's usually a good idea to understand why\nan outdated package is being installed; otherwise\nit can indicate that something needs to be updated.\n\nPLEASE NOTE that highlight-versions does not\nactually consult Hackage, but rather your local\nindex of Hackage cached by cabal. You must call\n'cabal update' to be sure that\nhighlight-versions has access to the latest\ninformation about package versions on Hackage.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "highlight-versions" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.hackage-db
              hsPkgs.Cabal
              hsPkgs.ansi-terminal
            ];
          };
        };
      };
    }