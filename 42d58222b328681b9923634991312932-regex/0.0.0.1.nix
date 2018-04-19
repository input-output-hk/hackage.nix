{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "regex";
          version = "0.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Chris Dornan";
        maintainer = "chris.dornan@irisconnect.co.uk";
        author = "Chris Dornan";
        homepage = "https://iconnect.github.io/regex";
        url = "";
        synopsis = "A Regular Expression Toolkit for regex-base";
        description = "A Regular Expression Toolkit for regex-base with\nCompile-time checking of RE syntax, data types for\nmatches and captures, a text replacement toolkit,\nportable options, high-level Awk-like tools\nfor building text processing apps, regular expression\nmacros and test bench, a tutorial and copious examples.";
        buildType = "Simple";
      };
      components = {
        regex = {
          depends  = [
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.hashable
            hsPkgs.heredoc
            hsPkgs.hsyslog
            hsPkgs.regex-base
            hsPkgs.regex-tdfa
            hsPkgs.regex-tdfa-text
            hsPkgs.regex-pcre-builtin
            hsPkgs.smallcheck
            hsPkgs.tasty
            hsPkgs.tasty-hunit
            hsPkgs.tasty-smallcheck
            hsPkgs.template-haskell
            hsPkgs.transformers
            hsPkgs.text
            hsPkgs.time
            hsPkgs.unordered-containers
          ];
        };
        exes = {
          re-gen-modules = {
            depends  = [
              hsPkgs.regex
              hsPkgs.array
              hsPkgs.bytestring
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.regex-base
              hsPkgs.regex-tdfa
              hsPkgs.shelly
              hsPkgs.text
            ];
          };
          re-include = {
            depends  = [
              hsPkgs.regex
              hsPkgs.bytestring
              hsPkgs.base
              hsPkgs.shelly
              hsPkgs.text
            ];
          };
          re-pp = {
            depends  = [
              hsPkgs.regex
              hsPkgs.bytestring
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.shelly
              hsPkgs.text
            ];
          };
        };
        tests = {
          re-include-test = {
            depends  = [
              hsPkgs.regex
              hsPkgs.bytestring
              hsPkgs.base
              hsPkgs.shelly
              hsPkgs.text
            ];
          };
          re-gen-modules-test = {
            depends  = [
              hsPkgs.regex
              hsPkgs.array
              hsPkgs.bytestring
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.regex-base
              hsPkgs.regex-tdfa
              hsPkgs.shelly
              hsPkgs.text
            ];
          };
          re-nginx-log-processor = {
            depends  = [
              hsPkgs.regex
              hsPkgs.array
              hsPkgs.bytestring
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.hsyslog
              hsPkgs.regex-base
              hsPkgs.regex-tdfa
              hsPkgs.shelly
              hsPkgs.text
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.unordered-containers
            ];
          };
          re-pp-test = {
            depends  = [
              hsPkgs.regex
              hsPkgs.bytestring
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.shelly
              hsPkgs.text
            ];
          };
          re-tests = {
            depends  = [
              hsPkgs.regex
              hsPkgs.array
              hsPkgs.bytestring
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.regex-base
              hsPkgs.regex-tdfa
              hsPkgs.regex-tdfa-text
              hsPkgs.regex-pcre-builtin
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.text
            ];
          };
          re-tutorial = {
            depends  = [
              hsPkgs.regex
              hsPkgs.array
              hsPkgs.bytestring
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.heredoc
              hsPkgs.hsyslog
              hsPkgs.regex-base
              hsPkgs.regex-tdfa
              hsPkgs.regex-tdfa-text
              hsPkgs.regex-pcre-builtin
              hsPkgs.shelly
              hsPkgs.smallcheck
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-smallcheck
              hsPkgs.template-haskell
              hsPkgs.transformers
              hsPkgs.text
              hsPkgs.time
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }