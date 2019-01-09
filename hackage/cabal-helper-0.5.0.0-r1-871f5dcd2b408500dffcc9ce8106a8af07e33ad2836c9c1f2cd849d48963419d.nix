{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cabal-helper"; version = "0.5.0.0"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "dxld@darkboxed.org";
      author = "Daniel Gröber <dxld@darkboxed.org>";
      homepage = "";
      url = "";
      synopsis = "Simple interface to some of Cabal's configuration state used by ghc-mod";
      description = "@cabal-helper@ provides a library which wraps the internal use of\nanexecutable to lift the restrictions imposed by linking against versions of\nGHC before @7.10@. This has the pleasant side effect of isolating the user\nfrom having to deal with Cabal version changes manually as @cabal-helper@\ncan simply recompile it's helper program automatically as needed.\n\n@cabal-helper@ uses a wrapper executable to compile the actual cabal-helper\nexecutable at runtime while linking against an arbitrary version of\nCabal. This runtime-compiled helper executable is then used to extract\nvarious bits and peices from Cabal\\'s on disk state (dist/setup-config)\nwritten by it's configure command.\n\nIn addition to this the wrapper executable also supports installing any\nversion of Cabal from hackage in case it cannot be found in any available\npackage database. The wrapper installs these instances of the Cabal library\ninto a private package database so as to not interfere with the user's\npackages.\n\nFurthermore the wrapper supports one special case namely reading a state\nfile for Cabal itself. This is needed as Cabal compiles it's Setup.hs using\nitself and not using any version of Cabal installed in any package database.\n\n@cabal-helper@ can compile with @Cabal >= 1.14@ but requires @Cabal >= 1.16@\nat runtime.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.process)
          (hsPkgs.ghc-prim)
          ];
        };
      exes = {
        "cabal-helper-wrapper" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.Cabal)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.transformers)
            (hsPkgs.template-haskell)
            (hsPkgs.temporary)
            (hsPkgs.utf8-string)
            ];
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cabal-helper)
            (hsPkgs.extra)
            (hsPkgs.unix)
            (hsPkgs.process)
            ];
          };
        };
      };
    }