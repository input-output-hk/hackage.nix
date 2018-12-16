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
        name = "data-extra";
        version = "2.5.1";
      };
      license = "BSD-3-Clause";
      copyright = "2013 Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done, Sam Levy";
      homepage = "";
      url = "";
      synopsis = "Extra utilities for working on Data.* types.";
      description = "Extra utilities for working on Data.* types.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.old-locale)
          (hsPkgs.time)
          (hsPkgs.mtl)
        ];
      };
    };
  }