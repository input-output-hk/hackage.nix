{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.18";
      identifier = {
        name = "cassava-conduit";
        version = "0.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2014-2016 Dom De Re";
      maintainer = "Dom De Re";
      author = "Dom De Re";
      homepage = "https://github.com/domdere/cassava-conduit";
      url = "";
      synopsis = "Conduit interface for cassava package";
      description = "Conduit interface for cassava package\n\nPRs welcome.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.bifunctors)
          (hsPkgs.bytestring)
          (hsPkgs.cassava)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.mtl)
          (hsPkgs.text)
        ];
      };
      tests = {
        "quickcheck" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.cassava-conduit)
          ];
        };
      };
      benchmarks = {
        "benchmarks" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cassava-conduit)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }