{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { llvm = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "toolshed";
        version = "0.15.0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "(C) 2010-2013 Dr. Alistair Ward";
      maintainer = "toolshed <at> functionalley <dot> eu";
      author = "Dr. Alistair Ward";
      homepage = "http://functionalley.eu";
      url = "";
      synopsis = "Utilities used by other packages.";
      description = "An ill-defined collection of simple unrelated utilities used by other packages from <http://functionalley.eu>";
      buildType = "Simple";
    };
    components = {
      "toolshed" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.QuickCheck)
          (hsPkgs.random)
        ];
      };
      exes = {
        "toolshed" = {
          depends  = [ (hsPkgs.Cabal) ];
        };
      };
    };
  }