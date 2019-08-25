{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { split-these = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "monoidal-containers"; version = "0.6"; };
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
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashable)
          (hsPkgs.lens)
          (hsPkgs.newtype)
          (hsPkgs.semigroups)
          ] ++ (if flags.split-these
          then [ (hsPkgs.these) (hsPkgs.semialign) ]
          else [ (hsPkgs.these) ]);
        };
      };
    }