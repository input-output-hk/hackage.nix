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
        name = "geek";
        version = "1.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
      author = "Jinjing Wang";
      homepage = "http://github.com/nfjinjing/geek";
      url = "";
      synopsis = "Geek blog engine";
      description = "A dynamic blog engine, customizable with standard web technology";
      buildType = "Simple";
    };
    components = {
      "geek" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Glob)
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.air)
          (hsPkgs.air-th)
          (hsPkgs.air-extra)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.curl)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.fsnotify)
          (hsPkgs.hack2)
          (hsPkgs.hack2-contrib)
          (hsPkgs.miku)
          (hsPkgs.mtl)
          (hsPkgs.process)
          (hsPkgs.random)
          (hsPkgs.safe)
          (hsPkgs.system-filepath)
          (hsPkgs.text)
          (hsPkgs.text-icu)
          (hsPkgs.time)
          (hsPkgs.moe)
        ];
      };
    };
  }