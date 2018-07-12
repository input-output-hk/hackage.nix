{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hindent";
          version = "4.3.9";
        };
        license = "BSD-3-Clause";
        copyright = "2014 Chris Done";
        maintainer = "chrisdone@gmail.com";
        author = "Chris Done, Andrew Gibiansky, Tobias Pflug, Pierre Radermecker";
        homepage = "";
        url = "";
        synopsis = "Extensible Haskell pretty printer";
        description = "Extensible Haskell pretty printer. Both a library and an executable.\n\nSee the Github page for usage\\/explanation: <https://github.com/chrisdone/hindent>";
        buildType = "Simple";
      };
      components = {
        "hindent" = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-default
            hsPkgs.haskell-src-exts
            hsPkgs.monad-loops
            hsPkgs.mtl
            hsPkgs.text
          ];
        };
        exes = {
          "hindent" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hindent
              hsPkgs.text
              hsPkgs.descriptive
              hsPkgs.haskell-src-exts
            ];
          };
          "hindent-generate-tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hindent
              hsPkgs.text
              hsPkgs.directory
            ];
          };
        };
        tests = {
          "hspec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hindent
              hsPkgs.data-default
              hsPkgs.haskell-src-exts
              hsPkgs.monad-loops
              hsPkgs.mtl
              hsPkgs.text
              hsPkgs.hspec
              hsPkgs.directory
            ];
          };
        };
      };
    }