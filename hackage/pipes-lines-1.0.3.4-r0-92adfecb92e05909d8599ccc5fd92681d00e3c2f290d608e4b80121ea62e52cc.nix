{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "pipes-lines";
        version = "1.0.3.4";
      };
      license = "BSD-3-Clause";
      copyright = "2017 David McHealy";
      maintainer = "david.mchealy@gmail.com";
      author = "David McHealy";
      homepage = "https://github.com/mindreader/pipes-lines";
      url = "";
      synopsis = "Pipes for grouping by lines with carriage returns.";
      description = "Deprecated:  This library is deprecated in favor of <http://hackage.haskell.org/package/pipes-break pipes-break>,\nwhich is simpler, better tested, has more utility, has better understood semantics, and includes lens support.\n\n`pipes-lines` contains utility functions for splitting lines that involve carriage returns aka lines ending in \\\\r\\\\n\n\nThese are utility functions that were omitted from pipes-bytestring and pipes-text";
      buildType = "Simple";
    };
    components = {
      "pipes-lines" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.pipes)
          (hsPkgs.pipes-group)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ];
      };
      tests = {
        "pipes-lines-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pipes-lines)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.pipes)
            (hsPkgs.pipes-group)
            (hsPkgs.lens)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }