{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "simpleirc";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Dominik Picheta";
      maintainer = "Dominik Picheta <dominikpicheta@googlemail.com>";
      author = "Dominik Picheta <dominikpicheta@googlemail.com>";
      homepage = "http://github.com/dom96/SimpleIRC";
      url = "";
      synopsis = "Simple IRC Library";
      description = "Simple IRC Library. This IRC Library aims to be simple and lightweight.";
      buildType = "Simple";
    };
    components = {
      "simpleirc" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.network)
          (hsPkgs.containers)
          (hsPkgs.time)
          (hsPkgs.old-locale)
        ];
      };
    };
  }