{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "polynomial";
          version = "0.7.3";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "James Cook <mokus@deepbondi.net>";
        author = "James Cook <mokus@deepbondi.net>";
        homepage = "https://github.com/mokus0/polynomial";
        url = "";
        synopsis = "Polynomials";
        description = "A type for representing polynomials, several functions\nfor manipulating and evaluating them, and several\ninteresting polynomial sequences.";
        buildType = "Simple";
      };
      components = {
        polynomial = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.vector
            hsPkgs.vector-space
            hsPkgs.vector-th-unbox
          ] ++ (if compiler.isGhc
            then [
              hsPkgs.pretty
              hsPkgs.prettyclass
            ]
            else [ hsPkgs.pretty ]);
        };
        tests = {
          polynomial-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.polynomial
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.vector
              hsPkgs.vector-space
            ];
          };
        };
      };
    }