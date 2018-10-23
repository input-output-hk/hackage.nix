{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { test = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "DPM";
        version = "0.2.0";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) 2009-2010 Stefan Wehr";
      maintainer = "Stefan Wehr <mail@stefanwehr.de>";
      author = "Stefan Wehr <mail@stefanwehr.de>";
      homepage = "";
      url = "";
      synopsis = "Darcs Patch Manager";
      description = "The Darcs Patch Manager (/DPM/ for short) is a tool that simplifies working\nwith the revision control system darcs (<http://darcs.net>). It is most\neffective when used in an environment where developers do not push their\npatches directly to the main repository but where patches undergo a\nreviewing process before they are actually applied. See the documentation\nof the module \"DPM.Tutorial\" for a short tutorial.";
      buildType = "Simple";
    };
    components = {
      "DPM" = {};
      exes = {
        "dpm-tests" = {
          depends  = [
            (hsPkgs.darcs)
            (hsPkgs.bytestring)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.convertible)
            (hsPkgs.filepath)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.split)
            (hsPkgs.mtl)
            (hsPkgs.syb)
            (hsPkgs.regex-posix)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.pretty)
            (hsPkgs.unix)
            (hsPkgs.HTF)
            (hsPkgs.HSH)
          ];
        };
        "dpm" = {
          depends  = [
            (hsPkgs.darcs)
            (hsPkgs.bytestring)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.convertible)
            (hsPkgs.filepath)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.split)
            (hsPkgs.mtl)
            (hsPkgs.syb)
            (hsPkgs.regex-posix)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.pretty)
            (hsPkgs.unix)
            (hsPkgs.HTF)
            (hsPkgs.HSH)
          ];
        };
      };
    };
  }