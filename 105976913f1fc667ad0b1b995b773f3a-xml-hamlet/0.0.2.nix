{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "xml-hamlet";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "http://www.yesodweb.com/";
        url = "";
        synopsis = "Hamlet-style quasiquoter for XML content";
        description = "";
        buildType = "Simple";
      };
      components = {
        xml-hamlet = {
          depends  = [
            hsPkgs.base
            hsPkgs.shakespeare
            hsPkgs.xml-enumerator
            hsPkgs.text
            hsPkgs.template-haskell
            hsPkgs.parsec
          ];
        };
        tests = {
          runtests = {
            depends  = [
              hsPkgs.hspec
              hsPkgs.HUnit
              hsPkgs.base
              hsPkgs.shakespeare
              hsPkgs.xml-enumerator
              hsPkgs.text
              hsPkgs.template-haskell
              hsPkgs.parsec
            ];
          };
        };
      };
    }