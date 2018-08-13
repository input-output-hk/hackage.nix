{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "Lattices";
        version = "0.0.2";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Bart Coppens <kde@bartcoppens.be>";
      author = "Bart Coppens";
      homepage = "";
      url = "";
      synopsis = "A library for lattices";
      description = "A library for lattices, in particular for computing an LLL reduced basis for a lattice and finding a close lattice vector";
      buildType = "Simple";
    };
    components = {
      "Lattices" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.HaskellForMaths)
          (hsPkgs.array)
        ];
      };
      tests = {
        "test-all" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HaskellForMaths)
            (hsPkgs.array)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }