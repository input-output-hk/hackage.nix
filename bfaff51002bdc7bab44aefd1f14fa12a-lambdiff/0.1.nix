{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "lambdiff";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jamie@bu.mp";
        author = "Jamie Turner";
        homepage = "https://github.com/jamwt/lambdiff.git";
        url = "";
        synopsis = "Diff Viewer";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          lambdiff = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.mtl
              hsPkgs.enumerator
              hsPkgs.attoparsec
              hsPkgs.gtk
              hsPkgs.attoparsec-enumerator
            ];
          };
        };
      };
    }