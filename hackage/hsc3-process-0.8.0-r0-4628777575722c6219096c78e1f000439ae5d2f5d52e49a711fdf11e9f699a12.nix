{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { build-examples = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hsc3-process"; version = "0.8.0"; };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) Stefan Kersten and others 2008-2012";
      maintainer = "kaoskorobase@gmail.com";
      author = "Stefan Kersten, Rohan Drape";
      homepage = "https://github.com/kaoskorobase/hsc3-process";
      url = "";
      synopsis = "Create and control scsynth processes";
      description = "This library allows to create and control scsynth processes.\n\nChangeLog: <https://github.com/kaoskorobase/hsc3-process/blob/master/ChangeLog.md>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.hosc)
          (hsPkgs.hsc3)
          (hsPkgs.process)
          (hsPkgs.time)
          (hsPkgs.time-compat)
          (hsPkgs.transformers)
          ];
        };
      exes = {
        "hsc3-sine" = { depends = [ (hsPkgs.base) (hsPkgs.hsc3-process) ]; };
        "hsc3-nrt" = { depends = [ (hsPkgs.base) (hsPkgs.hsc3-process) ]; };
        };
      };
    }