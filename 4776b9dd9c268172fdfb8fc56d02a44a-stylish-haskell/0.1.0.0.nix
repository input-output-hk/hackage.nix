{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "stylish-haskell";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2012 Jasper Van der Jeugt";
        maintainer = "Jasper Van der Jeugt <m@jaspervdj.be>";
        author = "Jasper Van der Jeugt <m@jaspervdj.be>";
        homepage = "https://github.com/jaspervdj/stylish-haskell";
        url = "";
        synopsis = "Haskell code prettifier";
        description = "A Haskell code prettifier. For more information, see:\n\n<https://github.com/jaspervdj/stylish-haskell/blob/master/README.markdown>";
        buildType = "Simple";
      };
      components = {
        exes = {
          stylish-haskell = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell-src-exts
            ];
          };
        };
        tests = {
          stylish-haskell-tests = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.base
              hsPkgs.haskell-src-exts
            ];
          };
        };
      };
    }