{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "mgeneric"; version = "0.0.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Rafaël Bocquet <rafaelbocquet+github@gmail.com>";
      author = "Rafaël Bocquet";
      homepage = "http://github.com/RafaelBocquet/haskell-mgeneric/";
      url = "";
      synopsis = "Generics with multiple parameters";
      description = "This package provides an implementation of generics with multiple parameters in Haskell, as described in <http://dreixel.net/research/pdf/gpmp_colour.pdf>.\n\nA MGeneric instance can be derived for most datatypes with @deriveMGeneric ''Type@\n\nIt also provides the type classes 'MFunctor', 'MFoldable' and 'MTraversable', generalisations of 'Functor', 'Foldable' and 'Traversable' to kinds other than (* -> *), and the type class 'MZipWith'.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }