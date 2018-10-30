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
      specVersion = "1.8";
      identifier = {
        name = "optparse-simple";
        version = "0.0.2";
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
      "library" = {
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