{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "async-refresh";
        version = "0.2.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2017 Moritz Schulte";
      maintainer = "mtesseract@silverratio.net";
      author = "Moritz Schulte";
      homepage = "https://github.com/mtesseract/async-refresh";
      url = "";
      synopsis = "Package implementing core logic for refreshing of expiring data.";
      description = "This package can be used for refreshing of expiring data according\nto a user-provided action. Using callbacks, the user can decide\nhow she or he would like to be informed about data refreshing.";
      buildType = "Simple";
    };
    components = {
      "async-refresh" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.microlens)
          (hsPkgs.microlens-th)
          (hsPkgs.monad-logger)
          (hsPkgs.lifted-async)
          (hsPkgs.stm)
          (hsPkgs.safe-exceptions)
          (hsPkgs.formatting)
          (hsPkgs.monad-control)
        ];
      };
      tests = {
        "async-refresh-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.async-refresh)
            (hsPkgs.text)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.criterion)
            (hsPkgs.monad-logger)
            (hsPkgs.stm)
          ];
        };
      };
    };
  }