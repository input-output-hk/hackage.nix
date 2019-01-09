{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "GenericPretty"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ranca.razvan@gmail.com";
      author = "Razvan Ranca";
      homepage = "https://github.com/HaggisMcMutton/GenericPretty";
      url = "";
      synopsis = "A generic, derivable, haskell pretty printer.";
      description = "GenericPretty is a haskell library that provides support for automatic\nderivation of pretty printing functions on user defined data types.\nThe Outputable library is used underneath, the work is done over SDoc types.\n\nThe output provided by the library functions is identical to that of Prelude.show,\nexcept it has extra whitespace.\n\nThis requires the use of the new GHC.Generics features: <http://www.haskell.org/haskellwiki/Generics>.\nThese seem to be present in the GHC HEAD development snapshots >= 7.1.20110601.\n\nFor more info and examples of usage please see the README file and the API at <http://haggismcmutton.github.com/GenericPretty/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.ghc-prim) (hsPkgs.ghc) ];
        };
      };
    }