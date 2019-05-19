{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tip-lib"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "danr@chalmers.se";
      author = "Dan Rosén, Nick Smallbone";
      homepage = "http://tip-org.github.io";
      url = "";
      synopsis = "tons of inductive problems - support library and tools";
      description = "This package provides a tool for processing inductive theorem proving problems in TIP format (see the homepage for details).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.geniplate-mirror)
          (hsPkgs.split)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.pretty)
          (hsPkgs.array)
          (hsPkgs.optparse-applicative)
          ];
        build-tools = [
          (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex))
          (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy))
          ];
        };
      exes = {
        "tip" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tip-lib)
            (hsPkgs.pretty-show)
            (hsPkgs.pretty)
            (hsPkgs.optparse-applicative)
            ];
          };
        };
      };
    }