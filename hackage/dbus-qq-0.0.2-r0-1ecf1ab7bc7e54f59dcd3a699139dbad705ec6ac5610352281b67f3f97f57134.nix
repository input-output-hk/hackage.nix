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
        name = "dbus-qq";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "p.capriotti@gmail.com";
      author = "Paolo Capriotti";
      homepage = "";
      url = "";
      synopsis = "Quasi-quoter for DBus functions";
      description = "This package contains a quasi-quoter to automatically convert functions of the form @[Variant] -> [Variant]@ to functions of the actual types, returning a tuple of the results.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.dbus-core)
          (hsPkgs.template-haskell)
          (hsPkgs.containers)
        ];
      };
    };
  }