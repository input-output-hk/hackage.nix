{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "buildbox"; version = "2.2.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "Ben Lippmeier";
      homepage = "http://code.ouroborus.net/buildbox";
      url = "";
      synopsis = "Rehackable components for writing buildbots and test harnesses.";
      description = "Includes utilities for checking the host platform, running tests, capturing output,\nhandling errors, comparing runtimes against a baseline, sending mail, running events to a schedule etc.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.exceptions)
          (hsPkgs.old-locale)
          (hsPkgs.directory)
          (hsPkgs.temporary)
          (hsPkgs.process)
          (hsPkgs.time)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.stm)
          ];
        };
      };
    }