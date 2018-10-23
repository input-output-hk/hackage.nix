{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.9";
      identifier = {
        name = "kontrakcja-templates";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bartek@scrive.com";
      author = "Scrive";
      homepage = "";
      url = "";
      synopsis = "Utilities for working with many HStringTemplate templates from files";
      description = "This library adds support for working with multiple templates in a single file,\nand .csv files containing mapping from template names to multiple template versions\n(e.g. for translations)";
      buildType = "Simple";
    };
    components = {
      "kontrakcja-templates" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.HStringTemplate)
          (hsPkgs.containers)
          (hsPkgs.utf8-string)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.old-time)
          (hsPkgs.directory)
          (hsPkgs.html)
          (hsPkgs.MissingH)
          (hsPkgs.parsec)
        ];
      };
      tests = {
        "test-text-string-templates" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.syb)
            (hsPkgs.MissingH)
            (hsPkgs.mtl)
            (hsPkgs.time)
            (hsPkgs.directory)
            (hsPkgs.hslogger)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
            (hsPkgs.string-templates)
            (hsPkgs.old-time)
            (hsPkgs.HStringTemplate)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }