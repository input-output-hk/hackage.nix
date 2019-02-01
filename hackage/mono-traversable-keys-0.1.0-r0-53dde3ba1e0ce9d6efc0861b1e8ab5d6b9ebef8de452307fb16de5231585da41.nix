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
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.hashable)
          (hsPkgs.keys)
          (hsPkgs.mono-traversable)
          (hsPkgs.semigroups)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.vector-instances)
          ];
        };
      };
    }