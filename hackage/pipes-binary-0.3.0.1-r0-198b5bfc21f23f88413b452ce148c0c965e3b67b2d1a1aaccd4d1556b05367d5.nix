{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "pipes-binary"; version = "0.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Renzo Carbonara 2013-2014";
      maintainer = "renzocarbonaraλgmail.com";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/pipes-binary";
      url = "";
      synopsis = "Encode and decode binary streams using the pipes and binary libraries.";
      description = "Encode and decode binary Pipes streams using the @binary@ library.\n\nSee the @changelog@ file in the source distribution to learn about any\nimportant changes between version.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.ghc-prim)
          (hsPkgs.pipes)
          (hsPkgs.pipes-parse)
          (hsPkgs.pipes-bytestring)
          (hsPkgs.profunctors)
          (hsPkgs.transformers)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.ghc-prim)
            (hsPkgs.lens-family-core)
            (hsPkgs.pipes)
            (hsPkgs.pipes-binary)
            (hsPkgs.pipes-parse)
            (hsPkgs.smallcheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }