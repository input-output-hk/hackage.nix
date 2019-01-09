{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "test-lib"; version = "0.2"; };
      license = "ISC";
      copyright = "";
      maintainer = "iavor.diatchki@gmail.com";
      author = "Iavor Diatchki";
      homepage = "";
      url = "";
      synopsis = "A library to make a quick test-runner script.";
      description = "This library makes it easy to define an executable,\nwhich can find and run a bunch of tests for a binary.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.containers)
          (hsPkgs.HUnit)
          (hsPkgs.simple-get-opt)
          (hsPkgs.test-framework)
          (hsPkgs.test-framework-hunit)
          ];
        };
      exes = {
        "test-runner" = {
          depends = [ (hsPkgs.base) (hsPkgs.simple-get-opt) (hsPkgs.test-lib) ];
          };
        };
      };
    }