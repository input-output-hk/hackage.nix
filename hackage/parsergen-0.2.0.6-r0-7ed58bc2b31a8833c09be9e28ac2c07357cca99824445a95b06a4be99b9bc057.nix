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
      specVersion = "1.8";
      identifier = {
        name = "parsergen";
        version = "0.2.0.6";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "manpacket@gmail.com";
      author = "Michael Baikov";
      homepage = "";
      url = "";
      synopsis = "TH parser generator for splitting bytestring into fixed-width fields";
      description = "For more information, see the README:\n\n<https://github.com/tsurucapital/parsergen/blob/master/README.markdown>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.parsec)
          (hsPkgs.template-haskell)
        ];
      };
      tests = {
        "parsergen-tests" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.parsec)
            (hsPkgs.template-haskell)
          ];
        };
      };
    };
  }