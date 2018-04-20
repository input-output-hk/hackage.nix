{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hjsonschema";
          version = "1.6.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "ian@housejeffries.com";
        author = "Ian Grant Jeffries";
        homepage = "https://github.com/seagreen/hjsonschema";
        url = "";
        synopsis = "JSON Schema library";
        description = "";
        buildType = "Simple";
      };
      components = {
        hjsonschema = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.file-embed
            hsPkgs.filepath
            hsPkgs.hashable
            hsPkgs.hjsonpointer
            hsPkgs.http-client
            hsPkgs.http-types
            hsPkgs.pcre-heavy
            hsPkgs.profunctors
            hsPkgs.protolude
            hsPkgs.QuickCheck
            hsPkgs.scientific
            hsPkgs.semigroups
            hsPkgs.unordered-containers
            hsPkgs.text
            hsPkgs.vector
          ];
        };
        tests = {
          local = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.filepath
              hsPkgs.hjsonpointer
              hsPkgs.hjsonschema
              hsPkgs.profunctors
              hsPkgs.protolude
              hsPkgs.semigroups
              hsPkgs.text
              hsPkgs.QuickCheck
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.directory
              hsPkgs.hspec
            ];
          };
          remote = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.async
              hsPkgs.bytestring
              hsPkgs.filepath
              hsPkgs.hjsonpointer
              hsPkgs.hjsonschema
              hsPkgs.profunctors
              hsPkgs.protolude
              hsPkgs.semigroups
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.directory
              hsPkgs.hspec
              hsPkgs.wai-app-static
              hsPkgs.warp
            ];
          };
        };
      };
    }