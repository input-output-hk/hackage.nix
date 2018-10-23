{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = {
        name = "liblawless";
        version = "0.13.2";
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
      "liblawless" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.binary)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.time)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.stm)
          (hsPkgs.machines)
          (hsPkgs.contravariant)
          (hsPkgs.semigroups)
          (hsPkgs.exceptions)
          (hsPkgs.containers-unicode-symbols)
          (hsPkgs.data-textual)
          (hsPkgs.parsers)
          (hsPkgs.text-printer)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.hjsonschema)
          (hsPkgs.random)
          (hsPkgs.lens)
          (hsPkgs.path)
          (hsPkgs.path-io)
          (hsPkgs.temporary)
          (hsPkgs.protolude)
          (hsPkgs.stm-containers)
          (hsPkgs.text-icu)
          (hsPkgs.text-icu-normalized)
          (hsPkgs.yaml)
          (hsPkgs.zippers)
        ];
      };
      tests = {
        "test-liblawless" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.liblawless)
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