{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      system-libyaml = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "yaml";
          version = "0.8.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>, Anton Ageev <antage@gmail.com>,Kirill Simonov";
        homepage = "http://github.com/snoyberg/yaml/";
        url = "";
        synopsis = "Support for parsing and rendering YAML documents.";
        description = "Provides support for parsing and emitting Yaml documents.\n\nThis package includes the full libyaml C library version 0.1.2 by Kirill\nSimonov (<http://pyyaml.org/wiki/LibYAML>) in the package so you\ndon't need to worry about any non-Haskell dependencies.\n\nThe package is broken down into two modules.\n\"Data.Yaml\" provides a high-level interface based\naround the JSON datatypes provided by the @aeson@\npackage. \"Text.Libyaml\" provides a lower-level,\nstreaming interface. For most users, \"Data.Yaml\" is recommended.";
        buildType = "Simple";
      };
      components = {
        yaml = {
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
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.hspec
              hsPkgs.HUnit
              hsPkgs.directory
              hsPkgs.base
              hsPkgs.transformers
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.yaml
              hsPkgs.text
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }