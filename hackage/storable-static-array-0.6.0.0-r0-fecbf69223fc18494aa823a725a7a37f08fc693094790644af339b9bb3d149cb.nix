{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "storable-static-array"; version = "0.6.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chowells79@gmail.com";
      author = "Carl Howells";
      homepage = "";
      url = "";
      synopsis = "Statically-sized array wrappers with Storable instances\nfor FFI marshaling";
      description = "Uses type-level numeric literals to wrap arrays in a type\nthat statically fixes their size. The wrapper has\na @Storable@ instance, for easy integration with\nfixed-size native arrays.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }