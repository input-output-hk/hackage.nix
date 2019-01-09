{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { example = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "funflow-nix"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "matthewtpickering@gmail.com";
      author = "Matthew Pickering";
      homepage = "";
      url = "";
      synopsis = "Utility functions for using funflow with nix";
      description = "This library provides functions to create flows which run commands\nin environments created by nix commands.\nIt is designed to be like the docker integration but the environments\nare created by nix rather than in a container.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.funflow)
          (hsPkgs.text)
          (hsPkgs.path)
          (hsPkgs.modern-uri)
          ];
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs.funflow)
            (hsPkgs.funflow-nix)
            (hsPkgs.path)
            (hsPkgs.path-io)
            (hsPkgs.modern-uri)
            (hsPkgs.base)
            ];
          };
        };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.funflow)
            (hsPkgs.funflow-nix)
            (hsPkgs.path)
            (hsPkgs.path-io)
            (hsPkgs.process)
            (hsPkgs.random)
            (hsPkgs.safe-exceptions)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.temporary)
            (hsPkgs.unix)
            (hsPkgs.modern-uri)
            ];
          };
        };
      };
    }