{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bookkeeping-jp"; version = "0.1.1.2"; };
      license = "MIT";
      copyright = "2017 Kadzuya Okamoto";
      maintainer = "arow.okamoto+github@gmail.com";
      author = "Kadzuya Okamoto";
      homepage = "https://github.com/arowM/haskell-bookkeeping-jp#readme";
      url = "";
      synopsis = "Helper functions for Japanese bookkeeping.";
      description = "Helper functions of [bookkeeping module](https://github.com/arowM/haskell-bookkeeping#readme) for Japanese bookkeeping.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bookkeeping)
          (hsPkgs.mono-traversable)
          (hsPkgs.text)
          (hsPkgs.time)
          ];
        };
      tests = {
        "bookkeeping-jp-test" = {
          depends = [ (hsPkgs.base) (hsPkgs.bookkeeping-jp) ];
          };
        "doctest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Glob)
            (hsPkgs.doctest)
            (hsPkgs.bookkeeping-jp)
            ];
          };
        };
      };
    }