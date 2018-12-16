{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "sophia";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Eyal Lotem <eyal.lotem+hackage@gmail.com>";
      author = "Eyal Lotem <eyal.lotem+hackage@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Bindings to Sophia library";
      description = "Bindings to <http://sphia.org/ sophia>, an open source, modern, fast\nkey/value store.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bindings-sophia)
          (hsPkgs.bytestring)
        ];
      };
      tests = {
        "main-test-suite" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.sophia)
            (hsPkgs.bindings-sophia)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.directory)
            (hsPkgs.bytestring)
          ];
        };
      };
      benchmarks = {
        "main-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.sophia)
            (hsPkgs.bindings-sophia)
            (hsPkgs.directory)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }