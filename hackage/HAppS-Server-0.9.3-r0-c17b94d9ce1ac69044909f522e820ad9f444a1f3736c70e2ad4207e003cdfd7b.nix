{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { base4 = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "HAppS-Server";
        version = "0.9.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "AlexJacobson@HAppS.org";
      author = "HAppS LLC";
      homepage = "";
      url = "";
      synopsis = "Web related tools and services.";
      description = "Web framework";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = (([
          (hsPkgs.base)
          (hsPkgs.HaXml)
          (hsPkgs.parsec)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.hslogger)
          (hsPkgs.HAppS-Data)
          (hsPkgs.HAppS-Util)
          (hsPkgs.HAppS-State)
          (hsPkgs.HAppS-IxSet)
          (hsPkgs.HTTP)
          (hsPkgs.template-haskell)
          (hsPkgs.xhtml)
          (hsPkgs.html)
          (hsPkgs.bytestring)
          (hsPkgs.random)
          (hsPkgs.containers)
          (hsPkgs.old-time)
          (hsPkgs.old-locale)
          (hsPkgs.directory)
          (hsPkgs.process)
        ] ++ (if compiler.isGhc && compiler.version.ge "6.10"
          then [
            (hsPkgs.parsec)
            (hsPkgs.syb)
          ]
          else [
            (hsPkgs.parsec)
          ])) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix)) ++ pkgs.lib.optional (flags.base4) (hsPkgs.base);
      };
    };
  }