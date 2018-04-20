{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      split-base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "readline";
          version = "1.0.3.0";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "libraries@haskell.org";
        author = "";
        homepage = "";
        url = "";
        synopsis = "An interface to the GNU readline library";
        description = "More information on readline can be found at\nhttp:\\/\\/www.gnu.org\\/directory\\/readline.html.";
        buildType = "Configure";
      };
      components = {
        readline = {
          depends  = if _flags.split-base
            then [
              hsPkgs.base
              hsPkgs.process
            ]
            else [ hsPkgs.base ];
        };
      };
    }