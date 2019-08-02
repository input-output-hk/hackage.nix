{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "symbolic-link"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "fuzz@kt-22.com";
      author = "Fuzz Leonard";
      homepage = "https://github.com/fuzz/symbolic-link";
      url = "";
      synopsis = "Symlink tools";
      description = "Tools for working with symbolic links on POSIX systems.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.directory) (hsPkgs.unix) ];
        };
      exes = {
        "symlink" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.unix)
            (hsPkgs.yaml)
            ];
          };
        };
      };
    }