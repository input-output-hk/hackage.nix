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
        name = "dyre";
        version = "0.8.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Will Donnelly";
      maintainer = "Will Donnelly <will.donnelly@gmail.com>";
      author = "Will Donnelly";
      homepage = "http://github.com/willdonnelly/dyre";
      url = "";
      synopsis = "Dynamic reconfiguration in Haskell";
      description = "Dyre implements dynamic reconfiguration facilities after the\nstyle of Xmonad. Dyre aims to be as simple as possible without\nsacrificing features, and places an emphasis on simplicity of\nintegration with an application.\nA full introduction with a complete example project can be found\nin the documentation for 'Config.Dyre'";
      buildType = "Simple";
    };
    components = {
      "dyre" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.process)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.ghc-paths)
          (hsPkgs.old-time)
          (hsPkgs.binary)
          (hsPkgs.executable-path)
          (hsPkgs.xdg-basedir)
          (hsPkgs.io-storage)
        ] ++ (if system.isWindows
          then [ (hsPkgs.Win32) ]
          else [ (hsPkgs.unix) ]);
      };
    };
  }