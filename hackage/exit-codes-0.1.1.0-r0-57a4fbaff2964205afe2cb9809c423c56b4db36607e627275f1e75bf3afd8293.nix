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
      specVersion = "1.10";
      identifier = {
        name = "exit-codes";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2015 Justus Adam";
      maintainer = "dev@justus.science";
      author = "Justus Adam";
      homepage = "http://github.com/JustusAdam/exit-codes";
      url = "";
      synopsis = "Exit codes as defined by BSD";
      description = "Expose the exit codes defined by BSD in sysexits.h to the Haskell world.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
    };
  }