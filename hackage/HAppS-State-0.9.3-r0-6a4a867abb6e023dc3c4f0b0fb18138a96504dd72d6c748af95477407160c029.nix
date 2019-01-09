{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { base4 = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "HAppS-State"; version = "0.9.3"; };
      license = "BSD-3-Clause";
      copyright = "2007-2008 HAppS LLC";
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
        depends = ([
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
          (hsPkgs.directory)
          (hsPkgs.binary)
          (hsPkgs.filepath)
          (hsPkgs.hspread)
          ] ++ (if flags.base4
          then [ (hsPkgs.base) (hsPkgs.syb) ]
          else [
            (hsPkgs.base)
            ])) ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs.unix);
        };
      };
    }