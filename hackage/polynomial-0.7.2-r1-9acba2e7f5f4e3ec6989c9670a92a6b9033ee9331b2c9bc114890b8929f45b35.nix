{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "polynomial";
        version = "0.7.2";
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
      "polynomial" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.vector)
          (hsPkgs.vector-space)
          (hsPkgs.vector-th-unbox)
        ] ++ (if compiler.isGhc && compiler.version.lt "7.10"
          then [
            (hsPkgs.pretty)
            (hsPkgs.prettyclass)
          ]
          else [ (hsPkgs.pretty) ]);
      };
    };
  }