{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "SafeSemaphore";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Chris Kuklewicz <haskell@list.mightyreason.com>";
        author = "Chris Kuklewicz <haskell@list.mightyreason.com>";
        homepage = "get-URL-from-future";
        url = "";
        synopsis = "Much safer replacement for QSemN and QSem";
        description = "This provides a much safer semaphore than the QSem in base.  Performance has not been compared.";
        buildType = "Simple";
      };
      components = {
        SafeSemaphore = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          TestSafeSemaphore = {
            depends  = [
              hsPkgs.base
              hsPkgs.SafeSemaphore
              hsPkgs.HUnit
            ];
          };
        };
      };
    }