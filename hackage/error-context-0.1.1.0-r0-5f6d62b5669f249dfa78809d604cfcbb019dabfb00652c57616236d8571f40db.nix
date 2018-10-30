{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "error-context";
        version = "0.1.1.0";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.exceptions)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.resourcet)
          (hsPkgs.safe-exceptions)
          (hsPkgs.text)
          (hsPkgs.unliftio-core)
        ];
      };
      tests = {
        "error-context-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.error-context)
            (hsPkgs.exceptions)
            (hsPkgs.monad-logger)
            (hsPkgs.mtl)
            (hsPkgs.resourcet)
            (hsPkgs.safe-exceptions)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.unliftio-core)
          ];
        };
      };
    };
  }