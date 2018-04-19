{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "json-tools";
          version = "0.2.0";
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
              hsPkgs.AttoJson
              hsPkgs.bytestring
            ];
          };
          json-deep-select-key = {
            depends  = [
              hsPkgs.base
              hsPkgs.AttoJson
              hsPkgs.bytestring
              hsPkgs.containers
            ];
          };
          json-select = {
            depends  = [
              hsPkgs.base
              hsPkgs.AttoJson
              hsPkgs.bytestring
              hsPkgs.containers
            ];
          };
          json-iter = {
            depends  = [
              hsPkgs.base
              hsPkgs.AttoJson
              hsPkgs.bytestring
              hsPkgs.process
            ];
          };
          json-lines = {
            depends  = [
              hsPkgs.base
              hsPkgs.AttoJson
              hsPkgs.bytestring
            ];
          };
          json-strings = {
            depends  = [
              hsPkgs.base
              hsPkgs.AttoJson
              hsPkgs.bytestring
            ];
          };
          json-unlines = {
            depends  = [
              hsPkgs.base
              hsPkgs.AttoJson
              hsPkgs.bytestring
            ];
          };
          json-wrap = {
            depends  = [
              hsPkgs.base
              hsPkgs.AttoJson
              hsPkgs.bytestring
            ];
          };
          json-xargs = {
            depends  = [
              hsPkgs.base
              hsPkgs.AttoJson
              hsPkgs.bytestring
            ];
          };
          tar2json = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.convertible-text
              hsPkgs.data-object
              hsPkgs.data-object-json
              hsPkgs.tar
            ];
          };
        };
      };
    }