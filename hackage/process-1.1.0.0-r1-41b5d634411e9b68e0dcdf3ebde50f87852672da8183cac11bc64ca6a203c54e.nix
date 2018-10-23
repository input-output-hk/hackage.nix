{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { base4 = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "process";
        version = "1.1.0.0";
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
        depends  = ([
          (hsPkgs.directory)
          (hsPkgs.filepath)
        ] ++ pkgs.lib.optionals (!(compiler.isNhc98 && true)) (if system.isWindows
          then [ (hsPkgs.Win32) ]
          else [ (hsPkgs.unix) ])) ++ [
          (hsPkgs.base)
        ];
        libs = pkgs.lib.optionals (!(compiler.isNhc98 && true)) (pkgs.lib.optional (system.isWindows) (pkgs."kernel32"));
      };
    };
  }