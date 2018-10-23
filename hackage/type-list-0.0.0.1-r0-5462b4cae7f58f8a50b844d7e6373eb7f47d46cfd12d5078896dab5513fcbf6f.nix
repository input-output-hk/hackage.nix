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
        name = "type-list";
        version = "0.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "marcin.jan.mrotek@gmail.com";
      author = "Marcin Mrotek";
      homepage = "";
      url = "";
      synopsis = "Operations on type-level lists and tuples.";
      description = "Operations on type-level lists and tuples, together with their curried versions.";
      buildType = "Simple";
    };
    components = {
      "type-list" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.singletons)
        ];
      };
    };
  }