{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      testprogram = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "netwire";
          version = "5.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2013 Ertugrul Söylemez";
        maintainer = "Ertugrul Söylemez <es@ertes.de>";
        author = "Ertugrul Söylemez <es@ertes.de>";
        homepage = "";
        url = "";
        synopsis = "Functional reactive programming library";
        description = "This library provides interfaces for and implements wire arrows\nuseful both for functional reactive programming (FRP) and locally\nstateful programming (LSP).";
        buildType = "Simple";
      };
      components = {
        netwire = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.parallel
            hsPkgs.random
            hsPkgs.semigroups
            hsPkgs.transformers
            hsPkgs.time
          ];
        };
        exes = {
          netwire-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.netwire
            ];
          };
        };
      };
    }