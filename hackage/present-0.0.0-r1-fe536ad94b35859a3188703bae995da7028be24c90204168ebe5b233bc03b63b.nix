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
        name = "present";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2014 Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "";
      url = "";
      synopsis = "Make presentations for data types.";
      description = "Make presentations for data types.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.semigroups)
          (hsPkgs.data-default)
          (hsPkgs.mtl)
          (hsPkgs.aeson)
          (hsPkgs.atto-lisp)
        ];
      };
    };
  }