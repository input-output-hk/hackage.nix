{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8.0.4";
        identifier = {
          name = "heist";
          version = "1.0.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "snap@snapframework.com";
        author = "Doug Beardsley, Gregory Collins";
        homepage = "http://snapframework.com/";
        url = "";
        synopsis = "An Haskell template system supporting both HTML5 and XML.";
        description = "Heist is a powerful template system that supports both HTML5 and XML.\nSome of Heist's features are:\n\n* Designer-friendly HTML5 (or XML) syntax\n\n* Templates can be reloaded to make changes visible without recompiling\nyour Haskell code\n\n* Enforces near-perfect separation of business logic and view\n\n* Powerful abstraction primitives allowing you to eliminate repetition\n\n* Easy creation of domain-specific markup languages\n\n* Built-in support for including JSON and Markdown content in templates\n\n* Simple mechanism for designer-specified template caching\n\n* Optional merging of multiple \\<head\\> tags defined anywhere in the\ndocument";
        buildType = "Simple";
      };
      components = {
        heist = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.blaze-builder
            hsPkgs.blaze-html
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.directory-tree
            hsPkgs.dlist
            hsPkgs.filepath
            hsPkgs.hashable
            hsPkgs.lifted-base
            hsPkgs.map-syntax
            hsPkgs.monad-control
            hsPkgs.mtl
            hsPkgs.process
            hsPkgs.random
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.xmlhtml
          ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups;
        };
        tests = {
          testsuite = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.lens
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.aeson
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.bifunctors
              hsPkgs.blaze-builder
              hsPkgs.blaze-html
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.directory-tree
              hsPkgs.dlist
              hsPkgs.filepath
              hsPkgs.hashable
              hsPkgs.lifted-base
              hsPkgs.map-syntax
              hsPkgs.monad-control
              hsPkgs.mtl
              hsPkgs.process
              hsPkgs.random
              hsPkgs.text
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.transformers-base
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.xmlhtml
            ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups;
          };
        };
        benchmarks = {
          benchmark = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.criterion
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.aeson
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.blaze-builder
              hsPkgs.blaze-html
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.directory-tree
              hsPkgs.dlist
              hsPkgs.filepath
              hsPkgs.hashable
              hsPkgs.lifted-base
              hsPkgs.map-syntax
              hsPkgs.monad-control
              hsPkgs.mtl
              hsPkgs.process
              hsPkgs.random
              hsPkgs.statistics
              hsPkgs.text
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.transformers-base
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.xmlhtml
            ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups;
          };
        };
      };
    }