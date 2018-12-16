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
      specVersion = "1.2.3";
      identifier = {
        name = "freesect";
        version = "0.0.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andrew Seniuk <rasfar@gmail.com>";
      author = "Andrew Seniuk <rasfar@gmail.com>";
      homepage = "http://fremissant.net/freesect";
      url = "";
      synopsis = "A Haskell syntax extension for generalised sections.";
      description = "This package provides an preprocessor executable, \\'freesect\\',\nwhich implements a generalisation of sections (\\'free sections\\')\nfor partial application and higher-order style.  Some examples\nof free sections can be found in the included test suite; refer\nto the homepage for more info.  Should be built manually (this\nis very easy; please see the 000-readme file).";
      buildType = "Custom";
    };
    components = {
      exes = {
        "freesect" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.parallel)
            (hsPkgs.syb)
            (hsPkgs.cpphs)
            (hsPkgs.pretty)
            (hsPkgs.array)
            (hsPkgs.haskell98)
            (hsPkgs.mtl)
          ];
          build-tools = [
            (hsPkgs.buildPackages.happy)
          ];
        };
      };
    };
  }