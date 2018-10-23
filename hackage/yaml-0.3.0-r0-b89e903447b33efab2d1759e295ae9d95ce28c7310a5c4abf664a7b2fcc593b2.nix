{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      nolib = false;
      buildtests = false;
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "yaml";
        version = "0.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>, Anton Ageev <antage@gmail.com>";
      homepage = "http://github.com/snoyberg/yaml/";
      url = "";
      synopsis = "Low-level binding to the libyaml C library.";
      description = "Provides support for parsing and emitting Yaml documents. Includes the full C library in the package so you don't need to worry about any non-Haskell dependencies.";
      buildType = "Simple";
    };
    components = {
      "yaml" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.iteratee)
          (hsPkgs.MonadCatchIO-transformers)
          (hsPkgs.ListLike)
        ];
      };
      exes = {
        "runtests" = {
          depends  = pkgs.lib.optionals (flags.buildtests) [
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
            (hsPkgs.directory)
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.bytestring)
            (hsPkgs.iteratee)
            (hsPkgs.MonadCatchIO-transformers)
            (hsPkgs.ListLike)
          ];
        };
      };
    };
  }