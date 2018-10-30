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
        name = "acme-comonad";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "headprogrammingczar@gmail.com";
      author = "Joe Quinn";
      homepage = "";
      url = "";
      synopsis = "A more efficient dualization";
      description = "\"Control.Comonad\" is a double-dual module name. This package fixes that, in the interest of good coding style.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.comonad)
        ];
      };
    };
  }