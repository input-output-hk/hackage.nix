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
        name = "dove";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tom Hawkins  <tomahawkins@gmail.com>";
      author = "Tom Hawkins  <tomahawkins@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "The Dove verification language.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.acl2)
        ];
      };
    };
  }