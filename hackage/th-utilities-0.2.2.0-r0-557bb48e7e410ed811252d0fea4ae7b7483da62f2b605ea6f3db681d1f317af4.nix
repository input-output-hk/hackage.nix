{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "th-utilities"; version = "0.2.2.0"; };
      license = "MIT";
      copyright = "2016 FP Complete";
      maintainer = "Michael Sloan <mgsloan@gmail.com>";
      author = "";
      homepage = "https://github.com/fpco/th-utilities#readme";
      url = "";
      synopsis = "Collection of useful functions for use with Template Haskell";
      description = "";
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
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.primitive)
            (hsPkgs.syb)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.th-orphans)
            (hsPkgs.th-utilities)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }