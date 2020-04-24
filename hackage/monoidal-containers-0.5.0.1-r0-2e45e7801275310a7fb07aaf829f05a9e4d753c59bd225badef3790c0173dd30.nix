{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { split-these = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "monoidal-containers"; version = "0.5.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Ben Gamari";
      maintainer = "ben@smart-cactus.org";
      author = "Ben Gamari";
      homepage = "http://github.com/bgamari/monoidal-containers";
      url = "";
      synopsis = "Containers with monoidal accumulation";
      description = "Containers with merging via monoidal accumulation. The 'Monoid' instances\nprovided by the @containers@ and @unordered-containers@ packages merge\nstructures in a left-biased manner instead of using the underlying monoidal\nstructure of the value.\n\nThis package wraps the types provided by these packages, but provides @Monoid@\ninstances implemented in terms of the value type's 'mappend'. For instance,\nthe @Monoid@ @Map@ instance looks like,\n\n@\ninstance (Ord k, Semigroup a) => Monoid (MonoidalMap k a)\n@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."newtype" or ((hsPkgs.pkgs-errors).buildDepError "newtype"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          ] ++ (if flags.split-these
          then [
            (hsPkgs."these" or ((hsPkgs.pkgs-errors).buildDepError "these"))
            (hsPkgs."semialign" or ((hsPkgs.pkgs-errors).buildDepError "semialign"))
            ]
          else [
            (hsPkgs."these" or ((hsPkgs.pkgs-errors).buildDepError "these"))
            ]);
        buildable = true;
        };
      };
    }