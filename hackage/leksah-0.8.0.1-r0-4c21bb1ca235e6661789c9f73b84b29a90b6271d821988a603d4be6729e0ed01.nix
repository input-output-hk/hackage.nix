{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { yi = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "leksah";
        version = "0.8.0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "2007-2010 Juergen Nicklisch-Franken, Hamish Mackenzie";
      maintainer = "maintainer@leksah.org";
      author = "Juergen Nicklisch-Franken, Hamish Mackenzie";
      homepage = "http://www.leksah.org";
      url = "http://code.haskell.org/leksah";
      synopsis = "Haskell IDE written in Haskell";
      description = "An Integrated Development Environment for Haskell written in Haskell.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "leksah" = {
          depends  = ([
            (hsPkgs.Cabal)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.glib)
            (hsPkgs.gtk)
            (hsPkgs.gtksourceview2)
            (hsPkgs.mtl)
            (hsPkgs.old-time)
            (hsPkgs.parsec)
            (hsPkgs.pretty)
            (hsPkgs.process)
            (hsPkgs.regex-tdfa)
            (hsPkgs.regex-base)
            (hsPkgs.utf8-string)
            (hsPkgs.array)
            (hsPkgs.time)
            (hsPkgs.ltk)
            (hsPkgs.binary-shared)
            (hsPkgs.deepseq)
            (hsPkgs.hslogger)
            (hsPkgs.leksah-server)
            (hsPkgs.network)
          ] ++ (if system.isWindows
            then [ (hsPkgs.Win32) ]
            else [
              (hsPkgs.unix)
            ])) ++ pkgs.lib.optional (flags.yi) (hsPkgs.yi);
          libs = pkgs.lib.optional (system.isWindows) (pkgs."kernel32") ++ pkgs.lib.optional (system.isOsx) (pkgs."igemacintegration");
        };
      };
    };
  }