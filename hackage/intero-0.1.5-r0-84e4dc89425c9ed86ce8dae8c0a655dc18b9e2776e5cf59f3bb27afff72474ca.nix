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
        version = "0.1.5";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Chris Done,\n2012 Kazu Yamamoto,\n2008 Claus Reinke,\n2005 The University of Glasgow";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done, The University of Glasgow";
      homepage = "https://github.com/chrisdone/intero";
      url = "";
      synopsis = "Complete interactive development program for Haskell";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "intero" = {
          depends  = [
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
          ] ++ (if system.isWindows
            then [ (hsPkgs.Win32) ]
            else [ (hsPkgs.unix) ]);
        };
      };
      tests = {
        "store-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.temporary)
            (hsPkgs.process)
            (hsPkgs.transformers)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }