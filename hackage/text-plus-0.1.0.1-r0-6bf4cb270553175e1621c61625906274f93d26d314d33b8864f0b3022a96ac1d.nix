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
        name = "text-plus";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2017 factis research GmbH";
      maintainer = "kieran.meinhardt@gmail.com";
      author = "factis research GmbH";
      homepage = "https://github.com/factisresearch/opensource-mono#readme";
      url = "";
      synopsis = "Utils for text";
      description = "Utils for text";
      buildType = "Simple";
    };
    components = {
      "text-plus" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
          (hsPkgs.bytestring)
          (hsPkgs.pretty)
          (hsPkgs.strict-data)
          (hsPkgs.text)
          (hsPkgs.util-plus)
        ];
      };
      tests = {
        "text-plus-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HTF)
            (hsPkgs.doctest)
            (hsPkgs.text)
            (hsPkgs.text-plus)
          ];
        };
      };
    };
  }