{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "async-refresh-tokens";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2017 Moritz Schulte";
      maintainer = "mtesseract@silverratio.net";
      author = "Moritz Schulte";
      homepage = "https://github.com/mtesseract/async-refresh-tokens#readme";
      url = "";
      synopsis = "Package implementing core logic for refreshing of expiring access tokens";
      description = "This package can be used for renewal of expiring access tokens\naccording to user-provided actions. Tokens will be stored in a\ntransactional variable (TVar).";
      buildType = "Simple";
    };
    components = {
      "async-refresh-tokens" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.async-refresh)
          (hsPkgs.monad-logger)
          (hsPkgs.lifted-async)
          (hsPkgs.stm)
          (hsPkgs.microlens)
          (hsPkgs.microlens-th)
          (hsPkgs.text)
          (hsPkgs.monad-control)
          (hsPkgs.safe-exceptions)
          (hsPkgs.bytestring)
          (hsPkgs.formatting)
        ];
      };
      tests = {
        "async-refresh-tokens-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.async-refresh-tokens)
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