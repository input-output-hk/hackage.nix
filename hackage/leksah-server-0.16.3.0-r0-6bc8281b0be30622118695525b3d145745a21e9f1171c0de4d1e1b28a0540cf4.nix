{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      threaded = true;
      network-uri = true;
    };
    package = {
      specVersion = "1.10.2";
      identifier = {
        name = "leksah-server";
        version = "0.16.3.0";
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
        depends  = ((([
          (hsPkgs.Cabal)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.binary-shared)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.executable-path)
          (hsPkgs.directory)
          (hsPkgs.filepath)
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
          (hsPkgs.base-compat)
          (hsPkgs.aeson)
        ] ++ pkgs.lib.optionals (!(compiler.isGhcjs && true)) [
          (hsPkgs.haddock-api)
          (hsPkgs.haddock-library)
          (hsPkgs.ghc-boot)
        ]) ++ (if system.isWindows
          then [ (hsPkgs.Win32) ]
          else [
            (hsPkgs.unix)
          ])) ++ (if flags.network-uri
          then [
            (hsPkgs.network-uri)
            (hsPkgs.network)
          ]
          else [
            (hsPkgs.network)
          ])) ++ pkgs.lib.optional (!(compiler.isGhcjs && true)) (hsPkgs.ghc);
        libs = pkgs.lib.optionals (system.isWindows) [
          (pkgs."kernel32")
          (pkgs."pango-1.0")
          (pkgs."glib-2.0")
        ];
      };
      exes = {
        "leksah-server" = {
          depends  = ((([
            (hsPkgs.Cabal)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.binary-shared)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.executable-path)
            (hsPkgs.directory)
            (hsPkgs.filepath)
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
            (hsPkgs.base-compat)
          ] ++ pkgs.lib.optionals (!(compiler.isGhcjs && true)) [
            (hsPkgs.haddock-api)
            (hsPkgs.haddock-library)
            (hsPkgs.ghc-boot)
          ]) ++ (if system.isWindows
            then [ (hsPkgs.Win32) ]
            else [
              (hsPkgs.unix)
            ])) ++ (if flags.network-uri
            then [
              (hsPkgs.network-uri)
              (hsPkgs.network)
            ]
            else [
              (hsPkgs.network)
            ])) ++ pkgs.lib.optional (!(compiler.isGhcjs && true)) (hsPkgs.ghc);
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
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.text)
          ] ++ pkgs.lib.optional (!(compiler.isGhcjs && true)) (hsPkgs.doctest);
        };
      };
    };
  }