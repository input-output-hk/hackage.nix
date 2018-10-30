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
      specVersion = "1.6";
      identifier = {
        name = "hsc3-process";
        version = "0.7.0";
      };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) Stefan Kersten 2008-2012";
      maintainer = "Stefan Kersten";
      author = "Stefan Kersten";
      homepage = "http://space.k-hornz.de/software/hsc3-process";
      url = "";
      synopsis = "Create and control scsynth processes";
      description = "This library allows to create and control scsynth processes.\n\nChangeLog: <https://github.com/kaoskorobase/hsc3-process/blob/master/ChangeLog.md>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.hosc)
          (hsPkgs.hsc3)
          (hsPkgs.process)
          (hsPkgs.transformers)
        ];
      };
    };
  }