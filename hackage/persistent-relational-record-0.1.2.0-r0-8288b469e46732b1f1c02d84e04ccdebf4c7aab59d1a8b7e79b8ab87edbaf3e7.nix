{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      test-examples = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "persistent-relational-record";
        version = "0.1.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "2015 Takahiro Himura";
      maintainer = "taka@himura.jp";
      author = "Takahiro HIMURA";
      homepage = "http://github.com/himura/persistent-relational-record";
      url = "";
      synopsis = "relational-record on persisten backends.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.persistable-record)
          (hsPkgs.persistent)
          (hsPkgs.relational-query)
          (hsPkgs.resourcet)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
        ];
      };
      tests = {
        "unittest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.persistent-template)
            (hsPkgs.relational-query)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-th)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.persistent-relational-record)
          ];
        };
        "hlint" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hlint)
          ];
        };
        "examples" = {
          depends  = pkgs.lib.optionals (!(!flags.test-examples)) [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.monad-logger)
            (hsPkgs.persistable-record)
            (hsPkgs.persistent)
            (hsPkgs.persistent-mysql)
            (hsPkgs.persistent-template)
            (hsPkgs.relational-query)
            (hsPkgs.resourcet)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers-base)
            (hsPkgs.persistent-relational-record)
          ];
        };
      };
    };
  }