{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "async-refresh-tokens"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2017, 2018 Moritz Clasmeier";
      maintainer = "mtesseract@silverratio.net";
      author = "Moritz Clasmeier";
      homepage = "https://github.com/mtesseract/async-refresh-tokens#readme";
      url = "";
      synopsis = "Package implementing core logic for refreshing of expiring access tokens";
      description = "This package can be used for renewal of expiring access tokens according to user-provided actions. Tokens will be stored in a transactional variable (TVar).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.async-refresh)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.formatting)
          (hsPkgs.microlens)
          (hsPkgs.microlens-th)
          (hsPkgs.monad-logger)
          (hsPkgs.safe-exceptions)
          (hsPkgs.text)
          (hsPkgs.unliftio)
          (hsPkgs.unliftio-core)
          ];
        };
      tests = {
        "async-refresh-tokens-test" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.async-refresh-tokens)
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.monad-logger)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.unliftio)
            ];
          };
        };
      };
    }