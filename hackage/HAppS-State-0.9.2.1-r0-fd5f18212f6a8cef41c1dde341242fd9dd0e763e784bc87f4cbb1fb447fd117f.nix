{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "HAppS-State"; version = "0.9.2.1"; };
      license = "BSD-3-Clause";
      copyright = "2007 HAppS LLC";
      maintainer = "AlexJacobson@HAppS.org";
      author = "HAppS LLC";
      homepage = "";
      url = "";
      synopsis = "Event-based distributed state.";
      description = "Web framework";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.HaXml)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.stm)
          (hsPkgs.template-haskell)
          (hsPkgs.hslogger)
          (hsPkgs.HAppS-Util)
          (hsPkgs.HAppS-Data)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.random)
          (hsPkgs.old-time)
          (hsPkgs.old-locale)
          (hsPkgs.unix)
          (hsPkgs.directory)
          (hsPkgs.binary)
          (hsPkgs.filepath)
          ];
        };
      };
    }