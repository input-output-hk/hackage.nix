{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hstyle";
          version = "0.2.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Doug Beardsley <mightybyte@mightybyte.net>\nJasper Van der Jeugt <m@jaspervdj.be>";
        author = "Doug Beardsley <mightybyte@mightybyte.net>\nJasper Van der Jeugt <m@jaspervdj.be>";
        homepage = "";
        url = "";
        synopsis = "Checks Haskell source code for style compliance.";
        description = "Originally intended to automate style checking for the Snap\nproject.  But the project should be general enough to work\nwith other style guides.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "hstyle" = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.haskell-src-exts
              hsPkgs.syb
              hsPkgs.text
              hsPkgs.vector
            ];
          };
        };
      };
    }