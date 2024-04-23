{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.0";
      identifier = { name = "DBus"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2006 Evan Martin <martine@danga.com>";
      maintainer = "Unmaintained";
      author = "Evan Martin <martine@danga.com>";
      homepage = "http://neugierig.org/software/hdbus";
      url = "";
      synopsis = "DBus bindings";
      description = "Bindings for the D-Bus API.\nFor details on D-Bus, see the D-Bus wiki at:\n<http://www.freedesktop.org/wiki/Software/dbus>\n\nIt's worth noting that this binding is not stable or\neven well-tested at all. Use this library at your own risk.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }