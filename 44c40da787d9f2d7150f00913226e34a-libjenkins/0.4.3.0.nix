{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "libjenkins";
          version = "0.4.3.0";
        };
        license = "BSD-3-Clause";
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
            hsPkgs.async
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.free
            hsPkgs.http-client
            hsPkgs.http-conduit
            hsPkgs.http-types
            hsPkgs.lens
            hsPkgs.monad-control
            hsPkgs.network
            hsPkgs.resourcet
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.xml-conduit
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
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.free
              hsPkgs.hspec
              hsPkgs.hspec-expectations-lens
              hsPkgs.http-client
              hsPkgs.http-conduit
              hsPkgs.http-types
              hsPkgs.lens
              hsPkgs.monad-control
              hsPkgs.network
              hsPkgs.resourcet
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.xml-conduit
            ];
          };
        };
      };
    }