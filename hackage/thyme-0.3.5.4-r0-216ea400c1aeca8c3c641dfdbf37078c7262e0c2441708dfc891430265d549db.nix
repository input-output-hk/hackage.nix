{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      bug-for-bug = true;
      hlint = false;
      lens = false;
      show-internal = false;
      werror = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "thyme";
        version = "0.3.5.4";
      };
      license = "BSD-3-Clause";
      copyright = "© 2013−2014 Liyang HU";
      maintainer = "thyme@liyang.hu";
      author = "Liyang HU, Ashley Yakeley";
      homepage = "https://github.com/liyang/thyme";
      url = "";
      synopsis = "A faster time library";
      description = "Thyme is a rewrite of the fine @time@ library, with a particular focus\non performance for applications that make heavy use of timestamps.\n\nSee <http://hackage.haskell.org/package/thyme/docs/Data-Thyme.html Data.Thyme> for a full description.";
      buildType = "Simple";
    };
    components = {
      "thyme" = {
        depends  = ([
          (hsPkgs.QuickCheck)
          (hsPkgs.attoparsec)
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.random)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.vector)
          (hsPkgs.vector-th-unbox)
          (hsPkgs.vector-space)
        ] ++ pkgs.lib.optional (system.isWindows) (hsPkgs.Win32)) ++ (if flags.lens
          then [ (hsPkgs.lens) ]
          else [ (hsPkgs.profunctors) ]);
        build-tools = pkgs.lib.optional (system.isOsx) (hsPkgs.buildPackages.cpphs);
      };
      tests = {
        "sanity" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.old-locale)
            (hsPkgs.text)
            (hsPkgs.thyme)
            (hsPkgs.time)
            (hsPkgs.vector-space)
          ] ++ (if flags.lens
            then [ (hsPkgs.lens) ]
            else [
              (hsPkgs.profunctors)
              (hsPkgs.mtl)
            ]);
        };
        "rewrite" = {
          depends  = [
            (hsPkgs.Cabal)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.random)
            (hsPkgs.system-posix-redirect)
            (hsPkgs.text)
            (hsPkgs.thyme)
          ];
        };
        "hlint" = {
          depends  = pkgs.lib.optionals (flags.hlint) [
            (hsPkgs.base)
            (hsPkgs.hlint)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.mtl)
            (hsPkgs.old-locale)
            (hsPkgs.random)
            (hsPkgs.thyme)
            (hsPkgs.time)
            (hsPkgs.vector)
            (hsPkgs.vector-space)
          ] ++ (if flags.lens
            then [ (hsPkgs.lens) ]
            else [ (hsPkgs.profunctors) ]);
        };
      };
    };
  }