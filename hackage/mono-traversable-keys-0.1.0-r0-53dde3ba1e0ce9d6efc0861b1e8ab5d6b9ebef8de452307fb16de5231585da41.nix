{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "mono-traversable-keys"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Alex Washburn 2019";
      maintainer = "hackage@recursion.ninja";
      author = "Alex Washburn";
      homepage = "https://github.com/recursion-ninja/mono-traversable-keys#readme";
      url = "";
      synopsis = "Type-classes for interacting with monomorphic containers with a key";
      description = "This is the extension of two other popular packages,\n<http://hackage.haskell.org/package/mono-traversable mono-traversable> and\n<http://hackage.haskell.org/package/keys keys>,\ndesigned to provided the functionality of the @keys@ package to the monomorphic\ncontainers enhanced by the @mono-traversable@ package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."keys" or ((hsPkgs.pkgs-errors).buildDepError "keys"))
          (hsPkgs."mono-traversable" or ((hsPkgs.pkgs-errors).buildDepError "mono-traversable"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."vector-instances" or ((hsPkgs.pkgs-errors).buildDepError "vector-instances"))
          ];
        buildable = true;
        };
      };
    }