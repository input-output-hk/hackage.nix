{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "regex";
          version = "0.10.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Chris Dornan 2016-2017";
        maintainer = "Chris Dornan <chris@regex.uk>";
        author = "Chris Dornan";
        homepage = "http://regex.uk";
        url = "";
        synopsis = "Toolkit for regex-base";
        description = "A Regular Expression Toolkit for regex-base with\nCompile-time checking of RE syntax, data types for\nmatches and captures, a text replacement toolkit,\nportable options, high-level AWK-like tools\nfor building text processing apps, regular expression\nmacros and test bench, a tutorial and copious examples.";
        buildType = "Simple";
      };
      components = {
        regex = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.hashable
            hsPkgs.regex-base
            hsPkgs.regex-tdfa
            hsPkgs.regex-tdfa-text
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.time
            hsPkgs.time-locale-compat
            hsPkgs.transformers
            hsPkgs.unordered-containers
          ];
        };
      };
    }