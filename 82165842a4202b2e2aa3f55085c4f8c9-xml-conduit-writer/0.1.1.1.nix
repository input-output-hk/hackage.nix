{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "xml-conduit-writer";
          version = "0.1.1.1";
        };
        license = "MIT";
        copyright = "Alexander Bondarenko 2013";
        maintainer = "aenor.realm@gmail.com";
        author = "Alexander Bondarenko";
        homepage = "https://bitbucket.org/dpwiz/xml-conduit-writer";
        url = "";
        synopsis = "Warm and fuzzy creation of XML documents.";
        description = "“It can scarcely be denied that the supreme goal of\nall theory is to make the irreducible basic elements\nas simple and as few as possible without having to\nsurrender the adequate representation of a single\ndatum of experience.” ­— Albert Einstein\n\nCheck out more examples in test/Main.hs and\nlook at the results with --enable-tests.";
        buildType = "Simple";
      };
      components = {
        "xml-conduit-writer" = {
          depends  = [
            hsPkgs.base
            hsPkgs.xml-conduit
            hsPkgs.xml-types
            hsPkgs.text
            hsPkgs.mtl
            hsPkgs.dlist
            hsPkgs.containers
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.xml-conduit-writer
              hsPkgs.text
            ];
          };
        };
      };
    }