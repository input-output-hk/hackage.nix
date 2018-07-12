{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      no-exe = false;
      no-examples = true;
      system-libyaml = false;
      no-unicode = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "yaml";
          version = "0.8.27";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>, Anton Ageev <antage@gmail.com>,Kirill Simonov";
        homepage = "http://github.com/snoyberg/yaml/";
        url = "";
        synopsis = "Support for parsing and rendering YAML documents.";
        description = "README and API documentation are available at <https://www.stackage.org/package/yaml>";
        buildType = "Simple";
      };
      components = {
        "yaml" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.resourcet
            hsPkgs.aeson
            hsPkgs.containers
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.text
            hsPkgs.attoparsec
            hsPkgs.scientific
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.semigroups
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.8.1") hsPkgs.template-haskell;
          pkgconfig = pkgs.lib.optional _flags.system-libyaml pkgconfPkgs."yaml-0.1";
        };
        exes = {
          "yaml2json" = {
            depends  = [
              hsPkgs.base
              hsPkgs.yaml
              hsPkgs.bytestring
              hsPkgs.aeson
            ];
          };
          "json2yaml" = {
            depends  = [
              hsPkgs.base
              hsPkgs.yaml
              hsPkgs.bytestring
              hsPkgs.aeson
            ];
          };
          "examples" = {
            depends  = pkgs.lib.optionals (!_flags.no-examples) [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.raw-strings-qq
              hsPkgs.text
              hsPkgs.yaml
            ];
          };
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.hspec
              hsPkgs.HUnit
              hsPkgs.base
              hsPkgs.transformers
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.yaml
              hsPkgs.text
              hsPkgs.aeson
              hsPkgs.unordered-containers
              hsPkgs.directory
              hsPkgs.vector
              hsPkgs.resourcet
              hsPkgs.mockery
              hsPkgs.base-compat
              hsPkgs.temporary
            ];
          };
        };
      };
    }