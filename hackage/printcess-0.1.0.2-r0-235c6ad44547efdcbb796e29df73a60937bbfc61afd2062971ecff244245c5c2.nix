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
        name = "printcess";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Hannes Saffrich";
      maintainer = "Hannes Saffrich <m0rphism@zankapfel.org>";
      author = "Hannes Saffrich";
      homepage = "https://github.com/m0rphism/printcess/";
      url = "";
      synopsis = "Pretty printing with indentation, mixfix operators, and automatic line breaks.";
      description = "Pretty printing library supporting indentation, parenthesis-elision according\nto fixity and associativity, and automatic line breaks after text width\nexceedance.";
      buildType = "Custom";
    };
    components = {
      "printcess" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.lens)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8") (hsPkgs.semigroups);
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.lens)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
            (hsPkgs.printcess)
          ];
        };
      };
    };
  }