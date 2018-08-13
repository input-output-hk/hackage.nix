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
        name = "cao";
        version = "0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Paulo Silva <paufil@di.uminho.pt>";
      author = "SMART Team / HASLab - University of Minho";
      homepage = "http://haslab.uminho.pt/mbb/software/cao-domain-specific-language-cryptography";
      url = "";
      synopsis = "CAO Compiler";
      description = "CAO Compiler";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cao" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.pretty)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.ConfigFile)
            (hsPkgs.language-c)
            (hsPkgs.array)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.yices)
            (hsPkgs.dlist)
            (hsPkgs.filepath)
          ];
          build-tools = [
            (hsPkgs.buildPackages.alex)
            (hsPkgs.buildPackages.happy)
          ];
        };
      };
    };
  }