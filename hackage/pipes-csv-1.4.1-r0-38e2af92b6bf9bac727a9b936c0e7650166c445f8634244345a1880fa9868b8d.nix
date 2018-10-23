{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { test-hunit = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "pipes-csv";
        version = "1.4.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "will@casarin.me";
      author = "William Casarin";
      homepage = "";
      url = "";
      synopsis = "Fast, streaming csv parser";
      description = "`pipes-csv` is a streaming csv parser built on top of `cassava` and `pipes`";
      buildType = "Simple";
    };
    components = {
      "pipes-csv" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cassava)
          (hsPkgs.pipes)
          (hsPkgs.unordered-containers)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "hunit" = {
          depends  = pkgs.lib.optionals (!(!flags.test-hunit)) [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.pipes)
            (hsPkgs.pipes-bytestring)
            (hsPkgs.pipes-csv)
            (hsPkgs.cassava)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
    };
  }