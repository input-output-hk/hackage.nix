{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { werror = false; };
    package = {
      specVersion = "1.18";
      identifier = {
        name = "beam-core";
        version = "0.7.2.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "travis@athougies.net";
      author = "Travis Athougies";
      homepage = "http://travis.athougies.net/projects/beam.html";
      url = "";
      synopsis = "Type-safe, feature-complete SQL query and manipulation interface for Haskell";
      description = "Beam is a Haskell library for type-safe querying and manipulation of SQL databases.\nBeam is modular and supports various backends. In order to use beam, you will need to use\n@beam-core@ along with a specific backend (such as @beam-postgres@ or @beam-sqlite@) as\nwell as the corresponding backend.\nFor more information, see the user manual and tutorial on\n<https://tathougies.github.io/beam GitHub pages>.";
      buildType = "Simple";
    };
    components = {
      "beam-core" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.microlens)
          (hsPkgs.ghc-prim)
          (hsPkgs.free)
          (hsPkgs.dlist)
          (hsPkgs.time)
          (hsPkgs.hashable)
          (hsPkgs.network-uri)
          (hsPkgs.containers)
          (hsPkgs.vector-sized)
          (hsPkgs.tagged)
        ];
      };
      tests = {
        "beam-core-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.beam-core)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.time)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
    };
  }