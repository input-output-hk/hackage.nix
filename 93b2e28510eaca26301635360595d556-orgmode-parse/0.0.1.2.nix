{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "orgmode-parse";
          version = "0.0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Parnell Springmeyer <parnell@digitalmentat.com>";
        author = "Parnell Springmeyer <parnell@digitalmentat.com>";
        homepage = "";
        url = "";
        synopsis = "A parser and writer for org-mode flavored documents.";
        description = "`orgmode-parse` is a parsing and writing library for the org-mode flavor\nof document markup.\n\nThis library parses the human-readable and textual representation\ninto an AST that can be used for output to another format (HTML?\nMarkdown?), binary serialized for storage, etc...\n\n<<https://travis-ci.org/digitalmentat/orgmode-parse.svg?branch=master>>";
        buildType = "Simple";
      };
      components = {
        orgmode-parse = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.unordered-containers
            hsPkgs.free
            hsPkgs.text
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.attoparsec
              hsPkgs.unordered-containers
              hsPkgs.HUnit
              hsPkgs.tasty
              hsPkgs.tasty-hunit
            ];
          };
        };
      };
    }