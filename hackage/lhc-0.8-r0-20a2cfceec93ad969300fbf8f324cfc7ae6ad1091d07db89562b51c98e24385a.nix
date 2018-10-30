{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      hpc = false;
      threaded = false;
      lhc-regress = false;
      with-libs = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "lhc";
        version = "0.8";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "lhc@projects.haskell.org";
      author = "David Himmelstrup";
      homepage = "http://lhc.seize.it/";
      url = "";
      synopsis = "LHC Haskell Compiler";
      description = "lhc is a haskell compiler which aims to produce the most efficient programs possible via whole\nprogram analysis and other optimizations.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "lhc" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.binary)
            (hsPkgs.digest)
            (hsPkgs.bytestring-trie)
            (hsPkgs.core)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.derive)
            (hsPkgs.unix)
            (hsPkgs.libffi)
            (hsPkgs.xhtml)
            (hsPkgs.pretty)
            (hsPkgs.ghc)
          ];
        };
        "lhc-regress" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.extensible-exceptions)
          ];
        };
        "lhc-pkg" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.pretty)
            (hsPkgs.haskell98)
            (hsPkgs.filepath)
            (hsPkgs.Cabal)
          ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
        };
      };
    };
  }