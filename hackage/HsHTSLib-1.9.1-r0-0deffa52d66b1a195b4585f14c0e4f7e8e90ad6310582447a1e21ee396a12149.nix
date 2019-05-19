{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "HsHTSLib"; version = "1.9.1"; };
      license = "MIT";
      copyright = "(c) 2016-2019 Kai Zhang";
      maintainer = "kai@kzhang.org";
      author = "Kai Zhang";
      homepage = "";
      url = "";
      synopsis = "Bindings to htslib.";
      description = "This package provides bindings to htslib, a library\nfor processing high throughput DNA sequencing data.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-lexing)
          (hsPkgs.conduit)
          ];
        libs = [ (pkgs."pthread") (pkgs."z") ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs))
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HsHTSLib)
            (hsPkgs.bytestring)
            (hsPkgs.vector)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-hunit)
            (hsPkgs.conduit)
            (hsPkgs.mtl)
            ];
          };
        };
      };
    }