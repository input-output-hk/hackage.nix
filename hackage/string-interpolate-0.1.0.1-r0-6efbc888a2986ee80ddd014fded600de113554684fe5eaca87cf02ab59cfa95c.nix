{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "string-interpolate"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2019 William Yao";
      maintainer = "williamyaoh@gmail.com";
      author = "William Yao";
      homepage = "";
      url = "";
      synopsis = "Haskell string/text/bytestring interpolation that just works";
      description = "Unicode-aware string interpolation that handles all textual types.\n\nSee the README at <https://gitlab.com/williamyaoh/string-interpolate.git#string-interpolate> for more info.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.text-conversions)
          (hsPkgs.utf8-string)
          ];
        };
      tests = {
        "string-interpolate-test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.quickcheck-text)
            (hsPkgs.string-interpolate)
            (hsPkgs.text)
            ];
          };
        };
      benchmarks = {
        "string-interpolate-bench" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.formatting)
            (hsPkgs.interpolate)
            (hsPkgs.interpolatedstring-perl6)
            (hsPkgs.string-interpolate)
            (hsPkgs.text)
            ];
          };
        };
      };
    }