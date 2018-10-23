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
        name = "formatting";
        version = "6.3.4";
      };
      license = "BSD-3-Clause";
      copyright = "2013 Chris Done, Shachaf Ben-Kiki, Martijn van Steenbergen, Mike Meyer, 2011 MailRank, Inc.";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done, Shachaf Ben-Kiki, Martijn van Steenbergen, Mike Meyer, Bryan O'Sullivan";
      homepage = "";
      url = "";
      synopsis = "Combinator-based type-safe formatting (like printf() or FORMAT)";
      description = "Combinator-based type-safe formatting (like printf() or FORMAT), modelled from the HoleyMonoids package.";
      buildType = "Simple";
    };
    components = {
      "formatting" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.old-locale)
          (hsPkgs.scientific)
          (hsPkgs.clock)
          (hsPkgs.array)
          (hsPkgs.ghc-prim)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.integer-gmp)
          (hsPkgs.semigroups)
        ];
      };
      tests = {
        "formatting-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.formatting)
            (hsPkgs.hspec)
            (hsPkgs.semigroups)
          ];
        };
      };
    };
  }