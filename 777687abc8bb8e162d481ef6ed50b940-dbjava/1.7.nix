{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "dbjava";
        version = "1.7";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "carliros.g@gmail.com";
      author = "Carlos Gomez";
      homepage = "http://devel.comunidadhaskell.org/dbjava/";
      url = "";
      synopsis = "Decompiler Bytecode Java";
      description = "A serializer and deserializer of Jvm classfile format.";
      buildType = "Simple";
    };
    components = {
      "dbjava" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.uulib)
          (hsPkgs.process)
          (hsPkgs.haskell98)
        ];
      };
      exes = {
        "dbjava" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.uulib)
            (hsPkgs.process)
            (hsPkgs.haskell98)
          ];
        };
      };
    };
  }