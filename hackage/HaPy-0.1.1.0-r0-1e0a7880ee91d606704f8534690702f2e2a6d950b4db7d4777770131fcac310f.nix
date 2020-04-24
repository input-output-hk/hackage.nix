{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "HaPy"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "ddf1991@gmail.com";
      author = "David Fisher";
      homepage = "https://github.com/sakana/HaPy";
      url = "";
      synopsis = "Haskell bindings for Python";
      description = "Call Haskell functions from Python!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."th-lift" or ((hsPkgs.pkgs-errors).buildDepError "th-lift"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }