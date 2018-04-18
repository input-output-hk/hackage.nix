{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      optimize = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "Webrexp";
          version = "1.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Vincent Berthoux (twinside@gmail.com)";
        author = "Vincent Berthoux";
        homepage = "";
        url = "";
        synopsis = "Regexp-like engine to scrap web data";
        description = "A web scrapping utility mixing CSS selector syntax and regular expressions";
        buildType = "Simple";
      };
      components = {
        Webrexp = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.HTTP
            hsPkgs.aeson
            hsPkgs.parsec
            hsPkgs.transformers
            hsPkgs.network
            hsPkgs.directory
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.regex-pcre-builtin
            hsPkgs.HaXml
            hsPkgs.hxt
            hsPkgs.process
            hsPkgs.filepath
            hsPkgs.unordered-containers
            hsPkgs.text
            hsPkgs.vector
            hsPkgs.template-haskell
          ];
        };
        exes = {
          webrexp = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.HTTP
              hsPkgs.aeson
              hsPkgs.parsec
              hsPkgs.transformers
              hsPkgs.network
              hsPkgs.directory
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.regex-pcre-builtin
              hsPkgs.HaXml
              hsPkgs.hxt
              hsPkgs.process
              hsPkgs.filepath
              hsPkgs.unordered-containers
              hsPkgs.text
              hsPkgs.vector
              hsPkgs.template-haskell
            ];
          };
        };
      };
    }