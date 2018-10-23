{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      threaded = true;
      network-uri = true;
    };
    package = {
      specVersion = "1.10.2";
      identifier = {
        name = "leksah-server";
        version = "0.15.2.0";
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
      "leksah-server" = {
        depends  = (([
          (hsPkgs.Cabal)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.binary-shared)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.executable-path)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.ghc)
          (hsPkgs.ltk)
          (hsPkgs.parsec)
          (hsPkgs.pretty)
          (hsPkgs.time)
          (hsPkgs.deepseq)
          (hsPkgs.hslogger)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.resourcet)
          (hsPkgs.attoparsec)
          (hsPkgs.transformers)
          (hsPkgs.strict)
          (hsPkgs.text)
          (hsPkgs.HTTP)
          (hsPkgs.process)
        ] ++ (if compiler.isGhc && compiler.version.ge "7.10"
          then [
            (hsPkgs.haddock-api)
            (hsPkgs.haddock-library)
            (hsPkgs.bin-package-db)
          ]
          else if compiler.isGhc && compiler.version.ge "7.8"
            then [ (hsPkgs.haddock-api) ]
            else [
              (hsPkgs.haddock)
            ])) ++ (if system.isWindows
          then [ (hsPkgs.Win32) ]
          else [
            (hsPkgs.unix)
          ])) ++ (if flags.network-uri
          then [
            (hsPkgs.network-uri)
            (hsPkgs.network)
          ]
          else [ (hsPkgs.network) ]);
        libs = pkgs.lib.optionals (system.isWindows) [
          (pkgs."kernel32")
          (pkgs."pango-1.0")
          (pkgs."glib-2.0")
        ];
      };
      exes = {
        "leksah-server" = {
          depends  = (([
            (hsPkgs.Cabal)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.binary-shared)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.executable-path)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.ghc)
            (hsPkgs.ltk)
            (hsPkgs.parsec)
            (hsPkgs.pretty)
            (hsPkgs.time)
            (hsPkgs.deepseq)
            (hsPkgs.hslogger)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.resourcet)
            (hsPkgs.attoparsec)
            (hsPkgs.transformers)
            (hsPkgs.strict)
            (hsPkgs.text)
            (hsPkgs.HTTP)
            (hsPkgs.process)
            (hsPkgs.leksah-server)
          ] ++ (if compiler.isGhc && compiler.version.ge "7.10"
            then [
              (hsPkgs.haddock-api)
              (hsPkgs.haddock-library)
              (hsPkgs.bin-package-db)
            ]
            else if compiler.isGhc && compiler.version.ge "7.8"
              then [ (hsPkgs.haddock-api) ]
              else [
                (hsPkgs.haddock)
              ])) ++ (if system.isWindows
            then [ (hsPkgs.Win32) ]
            else [
              (hsPkgs.unix)
            ])) ++ (if flags.network-uri
            then [
              (hsPkgs.network-uri)
              (hsPkgs.network)
            ]
            else [ (hsPkgs.network) ]);
          libs = pkgs.lib.optionals (system.isWindows) [
            (pkgs."kernel32")
            (pkgs."pango-1.0")
            (pkgs."glib-2.0")
          ];
        };
        "leksahecho" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hslogger)
            (hsPkgs.deepseq)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.resourcet)
            (hsPkgs.attoparsec)
            (hsPkgs.transformers)
            (hsPkgs.text)
            (hsPkgs.process)
            (hsPkgs.leksah-server)
          ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
        };
        "leksahtrue" = {
          depends  = [ (hsPkgs.base) ];
        };
      };
      tests = {
        "test-tool" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hslogger)
            (hsPkgs.leksah-server)
            (hsPkgs.HUnit)
            (hsPkgs.transformers)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.resourcet)
            (hsPkgs.process)
          ];
        };
      };
    };
  }