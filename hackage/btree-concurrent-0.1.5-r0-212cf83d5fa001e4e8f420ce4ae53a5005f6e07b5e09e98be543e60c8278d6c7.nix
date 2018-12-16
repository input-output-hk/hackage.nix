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
        name = "btree-concurrent";
        version = "0.1.5";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "brinchj@gmail.com";
      author = "Morten Brøns, Johan Brinch";
      homepage = "https://github.com/brinchj/btree-concurrent";
      url = "";
      synopsis = "A backend agnostic, concurrent BTree";
      description = "A backend agnostic, concurrent BTree";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.stm)
          (hsPkgs.random)
          (hsPkgs.time)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.hashable)
          (hsPkgs.snappy)
          (hsPkgs.bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.cereal)
          (hsPkgs.directory)
          (hsPkgs.filepath)
        ];
      };
      tests = {
        "quickcheck-highlevel" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.unix)
            (hsPkgs.QuickCheck)
            (hsPkgs.mtl)
            (hsPkgs.stm)
            (hsPkgs.random)
            (hsPkgs.time)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.hashable)
            (hsPkgs.snappy)
            (hsPkgs.bytestring)
            (hsPkgs.base64-bytestring)
            (hsPkgs.cereal)
            (hsPkgs.directory)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }