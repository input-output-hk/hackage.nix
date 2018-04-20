{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "error-context";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2018 Moritz Clasmeier";
        maintainer = "mtesseract@silverratio.net";
        author = "Moritz Clasmeier";
        homepage = "https://github.com/mtesseract/error-context#readme";
        url = "";
        synopsis = "Provides API for enriching errors with contexts";
        description = "Please see the README on Github at <https://github.com/mtesseract/error-context#readme>";
        buildType = "Simple";
      };
      components = {
        error-context = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.exceptions
            hsPkgs.katip
            hsPkgs.monad-logger
            hsPkgs.mtl
            hsPkgs.resourcet
            hsPkgs.safe-exceptions
            hsPkgs.text
            hsPkgs.unliftio-core
            hsPkgs.unordered-containers
          ];
        };
        tests = {
          error-context-tests = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.error-context
              hsPkgs.exceptions
              hsPkgs.katip
              hsPkgs.monad-logger
              hsPkgs.mtl
              hsPkgs.resourcet
              hsPkgs.safe-exceptions
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.text
              hsPkgs.unliftio-core
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }