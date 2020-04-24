{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "c-storable-deriving"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "maurer@matthewmaurer.org";
      author = "Matthew Maurer";
      homepage = "https://github.com/maurer/c-storable-deriving";
      url = "";
      synopsis = "Generate C-like storable instances from datatypes";
      description = "Automatically generates struct-rule based Storable\ninstances based on the Generic typeclass.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          ];
        buildable = true;
        };
      };
    }