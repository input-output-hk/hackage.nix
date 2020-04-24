{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "special-functors"; version = "1.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@henning-thielemann.de";
      author = "libraries@haskell.org";
      homepage = "";
      url = "";
      synopsis = "Control.Applicative, Data.Foldable, Data.Traversable (compatibility package)";
      description = "This package contains Control.Applicative, Data.Foldable, Data.Traversable\nfrom 6.8's base for use in earlier GHC versions";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }