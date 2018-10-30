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
      specVersion = "1.24";
      identifier = {
        name = "liblawless";
        version = "0.16.1";
      };
      license = "GPL-3.0-only";
      copyright = "© 2016 Evan Cofsky";
      maintainer = "evan@theunixman.com";
      author = "Evan Cofsky";
      homepage = "";
      url = "";
      synopsis = "Prelude based on protolude for GHC 8 and beyond.";
      description = "A Prelude relpacement for GHC 8 with a focus on building\napplications with Lenses, Machines, and Applicatives.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.binary)
          (hsPkgs.boomerang)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.containers-unicode-symbols)
          (hsPkgs.contravariant)
          (hsPkgs.data-default)
          (hsPkgs.data-textual)
          (hsPkgs.dns)
          (hsPkgs.exceptions)
          (hsPkgs.hjsonschema)
          (hsPkgs.lens)
          (hsPkgs.machines)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.network-ip)
          (hsPkgs.parsers)
          (hsPkgs.pathtype)
          (hsPkgs.protolude)
          (hsPkgs.random)
          (hsPkgs.semigroups)
          (hsPkgs.stm)
          (hsPkgs.stm-containers)
          (hsPkgs.QuickCheck)
          (hsPkgs.temporary)
          (hsPkgs.text)
          (hsPkgs.text-icu)
          (hsPkgs.text-icu-normalized)
          (hsPkgs.text-printer)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.zippers)
        ];
      };
      exes = {
        "ZFS" = {
          depends  = [
            (hsPkgs.liblawless)
          ];
        };
      };
      tests = {
        "test-liblawless" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.liblawless)
            (hsPkgs.network)
            (hsPkgs.semigroups)
            (hsPkgs.temporary)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-th)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }