{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      pedantic = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "lock-file";
        version = "0.5.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2013-2015, Peter Trško";
      maintainer = "peter.trsko@gmail.com";
      author = "Peter Trsko";
      homepage = "https://github.com/trskop/lock-file";
      url = "";
      synopsis = "Provide exclusive access to a resource using lock file.";
      description = "Provide exclusive access to a resource using lock file, which are files whose\npurpose is to signal by their presence that some resource is locked.\n\nCode example can be found in \"System.IO.LockFile\" module.";
      buildType = "Simple";
    };
    components = {
      "lock-file" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.transformers)
          (hsPkgs.data-default-class)
          (hsPkgs.exceptions)
          (hsPkgs.tagged-exception-core)
        ];
      };
      tests = {
        "lock-file-unit-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.transformers)
            (hsPkgs.data-default-class)
            (hsPkgs.exceptions)
            (hsPkgs.tagged-exception-core)
            (hsPkgs.filepath)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }