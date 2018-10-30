{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = {
        name = "intero";
        version = "0.1.24";
      };
      license = "BSD-3-Clause";
      copyright = "2016 FP Complete,\n2016 Chris Done,\n2012 Kazu Yamamoto,\n2008 Claus Reinke,\n2005 The University of Glasgow";
      maintainer = "chrisdone@fpcomplete.com";
      author = "Chris Done, The University of Glasgow";
      homepage = "https://github.com/commercialhaskell/intero";
      url = "";
      synopsis = "Complete interactive development program for Haskell";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "intero" = {
          depends  = ([
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.ghc)
            (hsPkgs.ghc-paths)
            (hsPkgs.haskeline)
            (hsPkgs.process)
            (hsPkgs.transformers)
            (hsPkgs.syb)
            (hsPkgs.containers)
            (hsPkgs.time)
          ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.ge "8.0.1") [
            (hsPkgs.ghci)
            (hsPkgs.ghc-boot-th)
          ]) ++ (if system.isWindows
            then [ (hsPkgs.Win32) ]
            else [ (hsPkgs.unix) ]);
        };
      };
      tests = {
        "intero-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.temporary)
            (hsPkgs.process)
            (hsPkgs.transformers)
            (hsPkgs.directory)
            (hsPkgs.regex-compat)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }