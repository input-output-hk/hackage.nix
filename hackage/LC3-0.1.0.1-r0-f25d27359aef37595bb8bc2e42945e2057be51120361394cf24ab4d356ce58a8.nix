{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "LC3"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "David Johnson (c) 2019";
      maintainer = "djohnson.m@gmail.com";
      author = "David Johnson";
      homepage = "";
      url = "";
      synopsis = "LC-3 virtual machine";
      description = "Haskell implementation of the LC-3 VM";
      buildType = "Simple";
      };
    components = {
      exes = {
        "LC3" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.lens)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }