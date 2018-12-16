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
      specVersion = "1.2";
      identifier = {
        name = "prelude-generalize";
        version = "0.4";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Another kind of alternate Prelude file";
      description = "\nThis is a prelude file with some additional functions and\nmore generalize of some functions, including list\noperation, monad operation, numbers, bitwise, and a few\nmore compositions. It also imports some other modules.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.comonad)
          (hsPkgs.logict)
        ];
      };
    };
  }