{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wsdl";
          version = "0.1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "me@jude.bio";
        author = "Jude Taylor";
        homepage = "";
        url = "";
        synopsis = "WSDL parsing in Haskell";
        description = "DO NOT USE, UNSTABLE AND INCOMPLETE.\n\nThis library provides a definition of, parsing and [TODO] generation of WSDL documents.";
        buildType = "Simple";
      };
      components = {
        wsdl = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.exceptions
            hsPkgs.mtl
            hsPkgs.network-uri
            hsPkgs.resourcet
            hsPkgs.text
            hsPkgs.xml-conduit
            hsPkgs.xml-types
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.file-embed
              hsPkgs.hspec
              hsPkgs.network-uri
              hsPkgs.wsdl
            ];
          };
        };
      };
    }