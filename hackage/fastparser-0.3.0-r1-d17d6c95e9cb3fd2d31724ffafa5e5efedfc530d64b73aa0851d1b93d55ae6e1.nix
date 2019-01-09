{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "fastparser"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "Simon Marechal";
      maintainer = "bartavelle@gmail.com";
      author = "Simon Marechal";
      homepage = "https://github.com/bartavelle/fastparser#readme";
      url = "";
      synopsis = "A fast, but bare bones, bytestring parser combinators library.";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.thyme)
          (hsPkgs.vector-space)
          (hsPkgs.microlens)
          (hsPkgs.bytestring-lexing)
          (hsPkgs.containers)
          ];
        };
      };
    }