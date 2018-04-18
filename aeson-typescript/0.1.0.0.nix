{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "aeson-typescript";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 CodeDown";
        maintainer = "tom@codedown.io";
        author = "Tom McLaughlin";
        homepage = "https://github.com/codedownio/aeson-typescript#readme";
        url = "";
        synopsis = "Generate TypeScript definition files from your ADTs";
        description = "Please see the README on Github at <https://github.com/codedownio/aeson-typescript#readme>";
        buildType = "Simple";
      };
      components = {
        aeson-typescript = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.interpolate
            hsPkgs.mtl
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.th-abstraction
            hsPkgs.unordered-containers
          ];
        };
        tests = {
          aeson-typescript-test = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.aeson-typescript
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hspec
              hsPkgs.interpolate
              hsPkgs.mtl
              hsPkgs.process
              hsPkgs.tasty
              hsPkgs.tasty-ant-xml
              hsPkgs.tasty-hspec
              hsPkgs.template-haskell
              hsPkgs.temporary
              hsPkgs.text
              hsPkgs.th-abstraction
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }