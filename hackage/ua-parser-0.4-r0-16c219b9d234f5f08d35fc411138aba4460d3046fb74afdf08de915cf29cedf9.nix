{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "ua-parser";
        version = "0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ozgun.ataman@soostone.com";
      author = "Ozgun Ataman";
      homepage = "";
      url = "";
      synopsis = "A library for parsing User-Agent strings, official Haskell port of ua-parser";
      description = "Please refer to the git/github README on the project for example usage.";
      buildType = "Simple";
    };
    components = {
      "ua-parser" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.pcre-light)
          (hsPkgs.yaml)
          (hsPkgs.aeson)
          (hsPkgs.filepath)
          (hsPkgs.data-default)
          (hsPkgs.syb)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.derive)
            (hsPkgs.HUnit)
            (hsPkgs.pcre-light)
            (hsPkgs.yaml)
            (hsPkgs.aeson)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.data-default)
            (hsPkgs.syb)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }