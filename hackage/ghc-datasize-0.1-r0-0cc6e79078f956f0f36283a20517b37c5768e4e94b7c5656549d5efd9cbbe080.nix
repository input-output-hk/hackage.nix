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
        name = "ghc-datasize";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Dennis Felsing 2012";
      maintainer = "Dennis Felsing <dennis@felsin9.de>";
      author = "Dennis Felsing <dennis@felsin9.de>";
      homepage = "http://felsin9.de/nnis/ghc-datasize";
      url = "";
      synopsis = "Determine the size of data structures in GHC's memory";
      description = "ghc-datasize is a tool to determine the size of data\nstructures in GHC's memory. Determining the size of\nrecursive data structures is supported. All sizes are in\nBytes.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-heap-view)
        ];
      };
    };
  }