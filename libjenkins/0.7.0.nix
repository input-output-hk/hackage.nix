{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "libjenkins";
          version = "0.7.0";
        };
        license = "BSD-2-Clause";
        copyright = "";
        maintainer = "matvey.aksenov@gmail.com";
        author = "Matvey Aksenov";
        homepage = "";
        url = "";
        synopsis = "Jenkins API interface";
        description = "Jenkins API interface. It supports REST and Discovery APIs";
        buildType = "Simple";
      };
      components = {
        libjenkins = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.free
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.http-types
            hsPkgs.lifted-async
            hsPkgs.lifted-base
            hsPkgs.monad-control
            hsPkgs.profunctors
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.network-uri
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
        tests = {
          doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.doctest
              hsPkgs.filepath
            ];
          };
          spec = {
            depends  = [
              hsPkgs.async
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.free
              hsPkgs.hspec
              hsPkgs.hspec-expectations-lens
              hsPkgs.http-client
              hsPkgs.http-client-tls
              hsPkgs.http-types
              hsPkgs.lens
              hsPkgs.lifted-async
              hsPkgs.lifted-base
              hsPkgs.monad-control
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.network-uri
              hsPkgs.profunctors
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.xml-conduit
            ];
          };
        };
      };
    }