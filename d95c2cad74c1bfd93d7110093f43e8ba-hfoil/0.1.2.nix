{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      repl = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hfoil";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "Greg Horn, 2012";
        maintainer = "gregmainland@gmail.com";
        author = "Greg Horn";
        homepage = "";
        url = "";
        synopsis = "Hess-Smith panel code for inviscid 2-d airfoil analysis";
        description = "Library and command line REPL with plotting to do simple inviscid hess-smith panel code.\n\nFeatures include:\n\n* Single and multi-element airfoils\n\n* Naca 4-series support with Gauss-Newton paneling\n\n* Broken UIUC database integration (type \\\"uiuc [foilname]\\\")\n\n* Shameless xfoil ripoff for relp/plotting interface\n\n* Only works with development version of Gloss that's not on Hackage yet\n\n* Haskeline interface with tab-completion\n\n\nTo get started, do cabal install or whatever, then run the \\\"hfoil\\\" binary.\n\nThings to try: \\\"naca 2412\\\", \\\"alfa 4\\\", (hit enter before entering another airfoil), \\\"load [filename]\\\", \\\"uiuc e330\\\"";
        buildType = "Simple";
      };
      components = {
        "hfoil" = {
          depends  = [
            hsPkgs.gloss
            hsPkgs.base
            hsPkgs.MissingH
            hsPkgs.hmatrix
            hsPkgs.haskeline
            hsPkgs.transformers
            hsPkgs.directory
            hsPkgs.HTTP
          ];
        };
        exes = { "hfoil" = {}; };
      };
    }