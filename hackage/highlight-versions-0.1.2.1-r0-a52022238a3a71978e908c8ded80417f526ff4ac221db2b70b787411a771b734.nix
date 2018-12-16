{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "highlight-versions";
        version = "0.1.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright 2012 Brent Yorgey";
      maintainer = "byorgey@cis.upenn.edu";
      author = "Brent Yorgey";
      homepage = "";
      url = "";
      synopsis = "Highlight package versions which differ from the latest\nversion on Hackage";
      description = "This package provides an executable which reads from\nstdin and outputs the same thing to stdout,\nexcept that any lines which look like package\nidentifiers (e.g. foo-0.3.2) are highlighted if\nthe version does not match the latest version on\nHackage: red if the version is less than the\nversion on Hackage, or cyan if greater.  In\naddition, the Hackage version is shown in blue.\n\nIn particular, it can be useful to pipe the\noutput of @cabal(-dev) install --dry-run@ through\nthis program, to aid in checking the install\nplan. It's usually a good idea to understand why\nan outdated package is being installed; otherwise\nit can indicate that something needs to be updated.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "highlight-versions" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.hackage-db)
            (hsPkgs.Cabal)
            (hsPkgs.ansi-terminal)
          ];
        };
      };
    };
  }