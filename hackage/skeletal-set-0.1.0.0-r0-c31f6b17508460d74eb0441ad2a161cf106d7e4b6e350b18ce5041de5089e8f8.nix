{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "skeletal-set";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Global Access Internet Services GmbH";
      maintainer = "kerestey@global.de";
      author = "Pavlo Kerestey";
      homepage = "";
      url = "";
      synopsis = "Skeletal set - a set with equivalence relation different from equality";
      description = "Skeletal Set is a set equipped with an equivalence relation. It is a useful data structure in cases where equivalence is chosen not to be equality. One can use it to influence the memberships of the elements more strictly than in sets, and run computations when conflicts between elements are found.\nYou can find more deatails in `Data.SkeletalSet`";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "skeletal-set-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.skeletal-set)
            (hsPkgs.smallcheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-discover)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-smallcheck)
          ];
        };
      };
    };
  }