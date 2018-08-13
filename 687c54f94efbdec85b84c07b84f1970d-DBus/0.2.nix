{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "0";
      identifier = {
        name = "DBus";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2006 Evan Martin <martine@danga.com>\n2008 David Himmelstrup <lemmih@gmail.com>";
      maintainer = "";
      author = "Evan Martin <martine@danga.com>, David Himmelstrup <lemmih@gmail.com>";
      homepage = "http://neugierig.org/software/hdbus";
      url = "";
      synopsis = "DBus bindings";
      description = "Bindings for the D-Bus API.\nFor details on D-Bus, see the D-Bus wiki at:\n<http://www.freedesktop.org/wiki/Software/dbus>";
      buildType = "Configure";
    };
    components = {
      "DBus" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
      };
    };
  }