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
        name = "pipes-lines";
        version = "1.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Author name here";
      maintainer = "david.mchealy@gmail.com";
      author = "David McHealy";
      homepage = "https://github.com/mindreader/pipes-lines";
      url = "";
      synopsis = "pipes-group like functions for lines delimited by \\r\\n";
      description = "These are utility functions that were omitted from pipes-bytestring and pipes-text for grouping or splitting lines by \\r\\n.";
      buildType = "Simple";
    };
    components = {
      "library" = {
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