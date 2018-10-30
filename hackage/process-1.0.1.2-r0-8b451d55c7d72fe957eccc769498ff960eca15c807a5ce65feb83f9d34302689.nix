{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { base4 = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "process";
        version = "1.0.1.2";
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
      "library" = {
        depends  = ([
          (hsPkgs.directory)
          (hsPkgs.filepath)
        ] ++ pkgs.lib.optionals (!(compiler.isNhc98 && true)) (pkgs.lib.optional (!system.isWindows) (hsPkgs.unix))) ++ [
          (hsPkgs.base)
        ];
      };
    };
  }