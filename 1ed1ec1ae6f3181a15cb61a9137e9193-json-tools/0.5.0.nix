{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "json-tools";
          version = "0.5.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Nicolas Pouillard";
        maintainer = "Nicolas Pouillard <nicolas.pouillard@gmail.com>";
        author = "Nicolas Pouillard";
        homepage = "";
        url = "";
        synopsis = "A collection of JSON tools";
        description = "A collection of JSON tools";
        buildType = "Simple";
      };
      components = {
        exes = {
          json-concat = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.bytestring
            ];
          };
          json-deep-select-key = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.containers
            ];
          };
          json-select = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.containers
            ];
          };
          json-iter = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.process
            ];
          };
          json-lines = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.bytestring
            ];
          };
          json-strings = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.bytestring
            ];
          };
          json-unlines = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
            ];
          };
          json-wrap = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.vector
            ];
          };
          json-xargs = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.bytestring
            ];
          };
          tar2json = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.aeson
              hsPkgs.unordered-containers
              hsPkgs.text
              hsPkgs.tar
            ];
          };
          json-quote = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.text
            ];
          };
          hjq = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.text
              hsPkgs.attoparsec
            ];
          };
        };
      };
    }