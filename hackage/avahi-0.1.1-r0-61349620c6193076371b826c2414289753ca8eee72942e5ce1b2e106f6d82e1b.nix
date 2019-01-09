{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "avahi"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "portnov84@rambler.ru";
      author = "Ilya Portnov";
      homepage = "";
      url = "";
      synopsis = "Minimal DBus bindings for Avahi daemon (http://avahi.org)";
      description = "This package provides minimal DBus bindings for Avahi daemon.\nIt can be used to browse for network service via Zeroconf protocol\nor to announce a service.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.dbus-core) (hsPkgs.text) ];
        };
      };
    }