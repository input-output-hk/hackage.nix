{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "SafeSemaphore";
          version = "0.9.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Chris Kuklewicz <haskell@list.mightyreason.com>";
        author = "Chris Kuklewicz <haskell@list.mightyreason.com>";
        homepage = "https://github.com/ChrisKuklewicz/SafeSemaphore";
        url = "";
        synopsis = "Much safer replacement for QSemN, QSem, and SampleVar";
        description = "This provides a much safer semaphore than the QSem, QSemN, SampleVar in base.\nThose base modules are not exception safe and can be broken by killThread.\nSee <https://github.com/ChrisKuklewicz/SafeSemaphore> for more details.";
        buildType = "Simple";
      };
      components = {
        "SafeSemaphore" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.stm
          ];
        };
        tests = {
          "TestSafeSemaphore" = {
            depends  = [
              hsPkgs.base
              hsPkgs.SafeSemaphore
              hsPkgs.HUnit
            ];
          };
        };
      };
    }