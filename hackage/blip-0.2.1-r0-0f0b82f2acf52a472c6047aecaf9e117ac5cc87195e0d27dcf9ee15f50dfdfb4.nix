{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "blip";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Bernie Pope <florbitous@gmail.com>";
      author = "Bernie Pope";
      homepage = "https://github.com/bjpop/blip";
      url = "";
      synopsis = "Python to bytecode compiler.";
      description = "Compiles Python 3 source code to bytecode. The resulting\nbytecode is written to a '.pyc' file, compatible with the\nCPython implementation (the default Python interpreter).";
      buildType = "Simple";
    };
    components = {
      exes = {
        "blip" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bliplib)
            (hsPkgs.filepath)
            (hsPkgs.parseargs)
            (hsPkgs.language-python)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.old-time)
            (hsPkgs.pretty)
          ];
        };
      };
    };
  }