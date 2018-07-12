{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.16";
        identifier = {
          name = "arith-encode";
          version = "0.7.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2014 Eric McCorkle.  All rights reserved.";
        maintainer = "Eric McCorkle <emc2@metricspace.net>";
        author = "Eric McCorkle";
        homepage = "https://github.com/emc2/arith-encode";
        url = "";
        synopsis = "A practical arithmetic encoding (aka Godel numbering) library.";
        description = "A library providing tools and various schemes for encoding arbitrary datatypes\nas natural numbers.  The underlying theory is that of isomorphisms with the natural\nnumbers (known as Godel numbering).  The library provides functionality for defining\nmultiple such encodings for a given datatype, as well as a collection of stock\nencodings and combinators which can be used to build more complex encodings.\n\nThis has various uses, among them binary serialization/deserialization and\nenumeration testing.\n\nThis is the second release candidate for 1.0 (initial release).";
        buildType = "Simple";
      };
      components = {
        "arith-encode" = {
          depends  = [
            hsPkgs.base
            hsPkgs.Cabal
            hsPkgs.containers
            hsPkgs.unordered-containers
            hsPkgs.array
            hsPkgs.hashable
            hsPkgs.fgl
            hsPkgs.arithmoi
            hsPkgs.binary
          ];
        };
        tests = {
          "UnitTest" = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.HUnit-Plus
              hsPkgs.containers
              hsPkgs.unordered-containers
              hsPkgs.array
              hsPkgs.hashable
              hsPkgs.fgl
              hsPkgs.arithmoi
              hsPkgs.binary
            ];
          };
        };
      };
    }