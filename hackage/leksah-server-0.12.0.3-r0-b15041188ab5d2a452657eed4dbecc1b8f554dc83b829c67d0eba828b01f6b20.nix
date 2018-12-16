{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      curl = false;
      libcurl = false;
      threaded = true;
    };
    package = {
      specVersion = "1.10.2";
      identifier = {
        name = "leksah-server";
        version = "0.12.0.3";
      };
      license = "LicenseRef-GPL";
      copyright = "2007-2011 Juergen Nicklisch-Franken, Hamish Mackenzie";
      maintainer = "maintainer@leksah.org";
      author = "Juergen \"jutaro\" Nicklisch-Franken, Hamish Mackenzie";
      homepage = "http://leksah.org";
      url = "http://code.haskell.org/leksah-collector";
      synopsis = "Metadata collection for leksah";
      description = "The interface to GHC-API for leksah";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs.Cabal)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.binary-shared)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.ghc)
          (hsPkgs.ltk)
          (hsPkgs.parsec)
          (hsPkgs.pretty)
          (hsPkgs.time)
          (hsPkgs.deepseq)
          (hsPkgs.hslogger)
          (hsPkgs.network)
          (hsPkgs.enumerator)
          (hsPkgs.attoparsec-enumerator)
          (hsPkgs.attoparsec)
          (hsPkgs.transformers)
        ] ++ (if compiler.isGhc && compiler.version.ge "7.4"
          then [ (hsPkgs.haddock) ]
          else if compiler.isGhc && compiler.version.ge "7.2"
            then [ (hsPkgs.haddock) ]
            else if compiler.isGhc && compiler.version.ge "7.0"
              then [ (hsPkgs.haddock) ]
              else if compiler.isGhc && compiler.version.ge "6.12"
                then [ (hsPkgs.haddock) ]
                else [
                  (hsPkgs.haddock-leksah)
                ])) ++ (if compiler.isGhc && compiler.version.ge "7.2"
          then [ (hsPkgs.process) ]
          else [
            (hsPkgs.process-leksah)
          ])) ++ (if system.isWindows
          then [ (hsPkgs.Win32) ]
          else [
            (hsPkgs.unix)
          ])) ++ pkgs.lib.optional (flags.libcurl) (hsPkgs.curl);
        libs = pkgs.lib.optional (system.isWindows) (pkgs."kernel32");
      };
      exes = {
        "leksah-server" = {
          depends = ((([
            (hsPkgs.Cabal)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.binary-shared)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.ghc)
            (hsPkgs.ltk)
            (hsPkgs.parsec)
            (hsPkgs.pretty)
            (hsPkgs.time)
            (hsPkgs.deepseq)
            (hsPkgs.hslogger)
            (hsPkgs.network)
            (hsPkgs.enumerator)
            (hsPkgs.attoparsec-enumerator)
            (hsPkgs.attoparsec)
            (hsPkgs.transformers)
          ] ++ (if compiler.isGhc && compiler.version.ge "7.4"
            then [ (hsPkgs.haddock) ]
            else if compiler.isGhc && compiler.version.ge "7.2"
              then [ (hsPkgs.haddock) ]
              else if compiler.isGhc && compiler.version.ge "7.0"
                then [ (hsPkgs.haddock) ]
                else if compiler.isGhc && compiler.version.ge "6.12"
                  then [ (hsPkgs.haddock) ]
                  else [
                    (hsPkgs.haddock-leksah)
                  ])) ++ (if compiler.isGhc && compiler.version.ge "7.2"
            then [ (hsPkgs.process) ]
            else [
              (hsPkgs.process-leksah)
            ])) ++ (if system.isWindows
            then [ (hsPkgs.Win32) ]
            else [
              (hsPkgs.unix)
            ])) ++ pkgs.lib.optional (flags.libcurl) (hsPkgs.curl);
          libs = pkgs.lib.optional (system.isWindows) (pkgs."kernel32");
        };
        "leksahecho" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hslogger)
            (hsPkgs.deepseq)
            (hsPkgs.bytestring)
            (hsPkgs.enumerator)
            (hsPkgs.attoparsec-enumerator)
            (hsPkgs.attoparsec)
            (hsPkgs.transformers)
          ] ++ (if compiler.isGhc && compiler.version.ge "7.2"
            then [ (hsPkgs.process) ]
            else [
              (hsPkgs.process-leksah)
            ]);
        };
      };
    };
  }