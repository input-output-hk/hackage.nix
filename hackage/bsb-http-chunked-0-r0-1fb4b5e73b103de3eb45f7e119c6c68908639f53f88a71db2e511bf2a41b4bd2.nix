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
        name = "bsb-http-chunked";
        version = "0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010-2014 Simon Meier\n(c) 2010 Jasper Van der Jeugt\n(c) 2013-2015 Leon P Smith";
      maintainer = "Simon Jakobi <simon.jakobi@gmail.com>";
      author = "Jasper Van der Jeugt, Simon Meier, Leon P Smith";
      homepage = "http://github.com/sjakobi/bsb-http-chunked";
      url = "";
      synopsis = "Chunked HTTP transfer encoding for bytestring builders";
      description = "This library is a new home for the\nBlaze.ByteString.Builder.HTTP module from the blaze-builder\npackage.";
      buildType = "Simple";
    };
    components = {
      "bsb-http-chunked" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.text)
        ] ++ (if compiler.isGhc && compiler.version.lt "7.8"
          then [
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-builder)
          ]
          else [ (hsPkgs.bytestring) ]);
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.text)
            (hsPkgs.utf8-string)
          ];
        };
      };
    };
  }