{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { pedantic = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "lock-file"; version = "0.7.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013-2016, 2018 Peter Trško";
      maintainer = "peter.trsko@gmail.com";
      author = "Peter Trsko";
      homepage = "https://github.com/trskop/lock-file#readme";
      url = "";
      synopsis = "Provide exclusive access to a resource using lock file.";
      description = "Provide exclusive access to a resource using lock file, which are files whose\npurpose is to signal by their presence that some resource is locked.\n\nCode example can be found in \"System.IO.LockFile\" module.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.data-default-class)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs.transformers);
        };
      tests = {
        "lock-file-unit-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.data-default-class)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs.transformers);
          };
        };
      };
    }