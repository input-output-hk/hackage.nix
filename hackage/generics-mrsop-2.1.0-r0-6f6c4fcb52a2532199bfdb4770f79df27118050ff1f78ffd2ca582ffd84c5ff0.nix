{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "generics-mrsop"; version = "2.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "v.cacciarimiraldo@gmail.com";
      author = "Victor Miraldo and Alejandro Serrano";
      homepage = "";
      url = "";
      synopsis = "Generic Programming with Mutually Recursive Sums of Products.";
      description = "A library that supports generic programming for mutually\nrecursive families in the sum-of-products style.\n\nA couple usage examples can be found under \"Generics.MRSOP.Examples\"\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }