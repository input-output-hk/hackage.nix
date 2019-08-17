{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "symbolic-link"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "fuzz@kt-22.com";
      author = "Fuzz Leonard";
      homepage = "https://github.com/fuzz/symbolic-link";
      url = "";
      synopsis = "Symlink functions";
      description = "SymbolicLink provides functions for working with symbolic links.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.directory) (hsPkgs.unix) ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.symbolic-link)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.unix)
            ];
          };
        };
      };
    }