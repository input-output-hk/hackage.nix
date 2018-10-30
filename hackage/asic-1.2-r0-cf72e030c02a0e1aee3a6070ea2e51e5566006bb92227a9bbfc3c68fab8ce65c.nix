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
      specVersion = "1.8";
      identifier = {
        name = "asic";
        version = "1.2";
      };
      license = "LicenseRef-LGPL";
      copyright = "Universiteit Utrecht, FITTEST project";
      maintainer = "Arie Middelkoop <ariem@cs.uu.nl>";
      author = "";
      homepage = "http://www.pros.upv.es/fittest/";
      url = "";
      synopsis = "Action Script Instrumentation Compiler";
      description = "A compiler for the instrumentation of ActionScript programs.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "asic" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.utf8-string)
            (hsPkgs.asil)
          ];
        };
      };
    };
  }