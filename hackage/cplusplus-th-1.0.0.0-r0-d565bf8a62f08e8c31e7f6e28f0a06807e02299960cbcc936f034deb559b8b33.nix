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
        name = "cplusplus-th";
        version = "1.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014, National ICT Australia Limited (NICTA)";
      maintainer = "maxwell.swadling@nicta.com.au";
      author = "Maxwell Swadling";
      homepage = "https://github.com/nicta/cplusplus-th";
      url = "";
      synopsis = "C++ Foreign Import Generation";
      description = "<<http://i.imgur.com/Ns5hntl.jpg>>\n\ncplusplus-th allows you to foreign import C++ functions that are\ncompatible with the ccall calling convention. It also includes\nsome standard library abstractions.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.bytestring)
          (hsPkgs.process)
          (hsPkgs.containers)
        ];
        libs = [ (pkgs."c++") ];
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.process)
          ];
        };
      };
    };
  }