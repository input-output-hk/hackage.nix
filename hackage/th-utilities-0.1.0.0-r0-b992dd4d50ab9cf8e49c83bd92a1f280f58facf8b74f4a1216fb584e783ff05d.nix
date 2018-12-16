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
        name = "th-utilities";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2016 FP Complete";
      maintainer = "sloan@fpcomplete.com";
      author = "Michael Sloan";
      homepage = "https://github.com/fpco/th-utilities#readme";
      url = "";
      synopsis = "Collection of useful functions for use with Template Haskell";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.primitive)
          (hsPkgs.syb)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.th-orphans)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.template-haskell)
            (hsPkgs.th-utilities)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }