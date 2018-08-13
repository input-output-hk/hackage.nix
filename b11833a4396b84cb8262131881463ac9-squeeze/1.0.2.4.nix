{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      llvm = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "squeeze";
        version = "1.0.2.4";
      };
      license = "LicenseRef-GPL";
      copyright = "(C) 2010 Dr. Alistair Ward";
      maintainer = "squeeze <at> functionalley <dot> eu";
      author = "Dr. Alistair Ward";
      homepage = "http://functionalley.eu";
      url = "";
      synopsis = "A file-packing application.";
      description = "Returns progressively better subsets of the specified files, selected to fit into a limited space, without wasting more than the specific ratio.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "squeeze" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.directory)
            (hsPkgs.factory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.toolshed)
            (hsPkgs.unix)
          ];
        };
      };
    };
  }