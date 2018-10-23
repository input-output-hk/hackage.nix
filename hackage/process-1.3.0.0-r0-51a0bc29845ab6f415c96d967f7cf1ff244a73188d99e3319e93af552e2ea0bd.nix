{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "process";
        version = "1.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "libraries@haskell.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Process libraries";
      description = "This package contains libraries for dealing with system processes.";
      buildType = "Configure";
    };
    components = {
      "process" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.deepseq)
        ] ++ (if system.isWindows
          then [ (hsPkgs.Win32) ]
          else [ (hsPkgs.unix) ]);
        libs = pkgs.lib.optional (system.isWindows) (pkgs."kernel32");
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.process)
          ];
        };
      };
    };
  }