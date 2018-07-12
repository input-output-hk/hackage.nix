{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "language-ecmascript";
          version = "0.17.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2007-2012 Brown University, (c) 2008-2010 Claudiu Saftoiu,\n(c) 2012-2015 Stevens Institute of Technology, (c) 2016 Andrey Chudnov, (c) 2016 Eyal Lotem";
        maintainer = "Andrey Chudnov <oss@chudnov.com>";
        author = "Andrey Chudnov, Arjun Guha, Spiridon Aristides Eliopoulos,\nJoe Gibbs Politz, Claudiu Saftoiu";
        homepage = "http://github.com/jswebtools/language-ecmascript";
        url = "";
        synopsis = "JavaScript parser and pretty-printer library";
        description = "Tools for working with ECMAScript 3 (popularly known as JavaScript).\nIncludes a parser, pretty-printer, tools for working with source tree\nannotations and an arbitrary instance. See CHANGELOG for a summary of\nchanges. The package follows the Haskell Package Versioning Policy since version 0.17.0.1.";
        buildType = "Simple";
      };
      components = {
        "language-ecmascript" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.wl-pprint
            hsPkgs.containers
            hsPkgs.uniplate
            hsPkgs.data-default-class
            hsPkgs.QuickCheck
            hsPkgs.template-haskell
            hsPkgs.Diff
            hsPkgs.testing-feat
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.wl-pprint
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.data-default-class
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.uniplate
              hsPkgs.Diff
              hsPkgs.language-ecmascript
            ];
          };
        };
      };
    }