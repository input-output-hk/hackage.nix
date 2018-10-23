{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "dbus-th";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "portnov84@rambler.ru";
      author = "IlyaPortnov";
      homepage = "";
      url = "";
      synopsis = "TemplateHaskell generator of DBus bindings";
      description = "This package provides functions to easily generate bindings for\nDBus functions. See Test.hs for examples.";
      buildType = "Simple";
    };
    components = {
      "dbus-th" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.syb)
          (hsPkgs.dbus-core)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
        ];
      };
    };
  }