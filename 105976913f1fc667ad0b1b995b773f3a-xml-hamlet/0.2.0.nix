{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "xml-hamlet";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "http://www.yesodweb.com/";
        url = "";
        synopsis = "Hamlet-style quasiquoter for XML content";
        description = "Hamlet-style quasiquoter for XML content";
        buildType = "Simple";
      };
      components = {
        xml-hamlet = {
          depends  = [
            hsPkgs.base
            hsPkgs.shakespeare
            hsPkgs.xml-conduit
            hsPkgs.text
            hsPkgs.template-haskell
            hsPkgs.parsec
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.hspec
              hsPkgs.HUnit
              hsPkgs.base
              hsPkgs.shakespeare
              hsPkgs.xml-conduit
              hsPkgs.text
              hsPkgs.template-haskell
              hsPkgs.parsec
              hsPkgs.xml-hamlet
            ];
          };
        };
      };
    }