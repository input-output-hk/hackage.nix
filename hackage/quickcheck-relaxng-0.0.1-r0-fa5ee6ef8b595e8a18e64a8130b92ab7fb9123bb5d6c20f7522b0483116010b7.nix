{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "quickcheck-relaxng";
        version = "0.0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "Audrey Tang 2014 (CC0)";
      maintainer = "audreyt@audreyt.org";
      author = "Audrey Tang";
      homepage = "http://github.com/audreyt/quickcheck-relaxng/";
      url = "";
      synopsis = "Generate RelaxNG-constrained XML documents for QuickCheck";
      description = "Generate RelaxNG-constrained XML documents for QuickCheck";
      buildType = "Simple";
    };
    components = {
      "quickcheck-relaxng" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
          (hsPkgs.quickcheck-regex)
          (hsPkgs.hxt-relaxng)
          (hsPkgs.hxt)
        ];
      };
    };
  }