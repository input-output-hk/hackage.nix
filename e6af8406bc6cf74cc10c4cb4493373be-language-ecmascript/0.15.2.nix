{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "language-ecmascript";
          version = "0.15.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2007-2012 Brown University, (c) 2008-2010 Claudiu Saftoiu,\n(c) 2012-2013 Stevens Institute of Technology";
        maintainer = "Andrey Chudnov <oss@chudnov.com>";
        author = "Andrey Chudnov, Arjun Guha, Spiridon Aristides Eliopoulos,\nJoe Gibbs Politz, Claudiu Saftoiu";
        homepage = "http://github.com/jswebtools/language-ecmascript";
        url = "";
        synopsis = "JavaScript parser and pretty-printer library";
        description = "Tools for working with ECMAScript 3 (popularly known as JavaScript).\nIncludes a parser, pretty-printer, tools for working with source tree\nannotations and an arbitrary instance. See CHANGELOG for a summary of\nchanges.";
        buildType = "Simple";
      };
      components = {
        language-ecmascript = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.pretty
            hsPkgs.containers
            hsPkgs.uniplate
            hsPkgs.data-default-class
            hsPkgs.QuickCheck
            hsPkgs.template-haskell
            hsPkgs.Diff
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.pretty
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.data-default-class
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.Diff
              hsPkgs.language-ecmascript
            ];
          };
        };
      };
    }