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
      specVersion = "1.8";
      identifier = {
        name = "optparse-simple";
        version = "0.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "2015 FP Complete";
      maintainer = "chrisdone@fpcomplete.com";
      author = "FP Complete";
      homepage = "";
      url = "";
      synopsis = "Simple interface to optparse-applicative";
      description = "Simple interface to optparse-applicative";
      buildType = "Simple";
    };
    components = {
      "optparse-simple" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          (hsPkgs.optparse-applicative)
          (hsPkgs.gitrev)
          (hsPkgs.either)
        ];
      };
    };
  }