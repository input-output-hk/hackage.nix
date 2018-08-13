{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "handsy";
        version = "0.0.14.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "utdemir@gmail.com";
      author = "Utku Demir";
      homepage = "https://github.com/utdemir/handsy";
      url = "";
      synopsis = "A DSL to describe common shell operations and interpeters for running them locally and remotely.";
      description = "DEPRECATED. @handsy@ is a small library mainly for applications which should make some\noperations on remote machines by SSH. It currently provides you:\n\n* A DSL describing basic system operations('command', 'readFile', 'writeFile' etc.)\n\n* Two interpreters for running this DSL locally or via SSH('run' and 'runRemote')\n\n* Some utility functions for common commands('os', 'mkTemp' etc.)\n\nIf you're looking for a shell scripting alternative, look at @turtle@, @shelly@ or\n@shellmate@ packages. @handsy@ is mostly relevant for the ability to apply simple\ncommands remotely.";
      buildType = "Simple";
    };
    components = {
      "handsy" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.operational)
          (hsPkgs.process-extras)
          (hsPkgs.shell-escape)
          (hsPkgs.retry)
          (hsPkgs.data-default-class)
          (hsPkgs.split)
          (hsPkgs.errors)
          (hsPkgs.lifted-base)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.handsy)
            (hsPkgs.bytestring)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-th)
          ];
        };
      };
    };
  }