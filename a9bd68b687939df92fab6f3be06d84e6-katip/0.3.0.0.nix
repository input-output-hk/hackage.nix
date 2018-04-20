{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      lib-werror = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "katip";
          version = "0.3.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Soostone Inc, 2015-2016";
        maintainer = "michael.xavier@soostone.com";
        author = "Ozgun Ataman, Michael Xavier";
        homepage = "https://github.com/Soostone/katip";
        url = "";
        synopsis = "A structured logging framework.";
        description = "Katip is a structured logging framework. See README.md for more details.";
        buildType = "Simple";
      };
      components = {
        katip = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.auto-update
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.either
            hsPkgs.exceptions
            hsPkgs.hostname
            hsPkgs.old-locale
            hsPkgs.string-conv
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.time
            hsPkgs.time-locale-compat
            hsPkgs.transformers
            hsPkgs.transformers-compat
            hsPkgs.unix
            hsPkgs.unordered-containers
            hsPkgs.monad-control
            hsPkgs.mtl
            hsPkgs.transformers-base
            hsPkgs.resourcet
            hsPkgs.microlens
            hsPkgs.microlens-th
            hsPkgs.semigroups
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.katip
              hsPkgs.aeson
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.quickcheck-instances
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.time
              hsPkgs.temporary
              hsPkgs.directory
              hsPkgs.regex-tdfa
              hsPkgs.unordered-containers
            ];
          };
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.blaze-builder
              hsPkgs.katip
              hsPkgs.criterion
              hsPkgs.unix
              hsPkgs.text
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.deepseq
              hsPkgs.async
            ];
          };
        };
      };
    }