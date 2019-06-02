{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { llvm = false; threaded = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "squeeze"; version = "1.0.4.17"; };
      license = "LicenseRef-GPL";
      copyright = "(C) 2010-2015 Dr. Alistair Ward";
      maintainer = "mailto:squeeze@functionalley.com";
      author = "Dr. Alistair Ward";
      homepage = "https://functionalley.com/Squeeze/squeeze.html";
      url = "";
      synopsis = "A file-packing application.";
      description = "Returns progressively better subsets of the specified files, selected to fit into a limited space, without wasting more than the specific ratio.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.data-default)
          (hsPkgs.Cabal)
          (hsPkgs.directory)
          (hsPkgs.factory)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.toolshed)
          ];
        };
      exes = {
        "squeeze" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.data-default)
            (hsPkgs.factory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.random)
            (hsPkgs.squeeze)
            (hsPkgs.toolshed)
            ];
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.extra)
            (hsPkgs.factory)
            (hsPkgs.QuickCheck)
            (hsPkgs.squeeze)
            (hsPkgs.toolshed)
            ];
          };
        };
      };
    }