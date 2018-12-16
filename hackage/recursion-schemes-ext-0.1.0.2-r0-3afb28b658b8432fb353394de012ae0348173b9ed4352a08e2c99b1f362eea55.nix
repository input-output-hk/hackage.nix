{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      development = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "recursion-schemes-ext";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017 Vanessa McHale";
      maintainer = "vanessa.mchale@reconfigure.io";
      author = "Vanessa McHale";
      homepage = "https://hub.darcs.net/vmchale/recursion-schemes-ext#readme";
      url = "";
      synopsis = "Amateur addenda to recursion-schemes";
      description = "This package provides some exotic recursion schemes that I miss when I leave Idris.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.recursion-schemes)
          (hsPkgs.composition-prelude)
        ];
      };
      tests = {
        "recursion-schemes-ext-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.recursion-schemes-ext)
            (hsPkgs.hspec)
          ];
        };
      };
      benchmarks = {
        "recursion-schemes-ext-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.recursion-schemes-ext)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }