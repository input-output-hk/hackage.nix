{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "scons2dot";
        version = "0.9";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Leandro Lisboa Penz <llpenz@gmail.com>";
      author = "Leandro Lisboa Penz";
      homepage = "";
      url = "";
      synopsis = "Generates graphviz file of scons dependency information";
      description = "This tool creates a graphviz dot file that represents\nbuild dependencies on a system built with scons.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "scons2dot" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.process)
          ];
        };
      };
    };
  }