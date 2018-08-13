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
      specVersion = "1.10";
      identifier = {
        name = "filepath-crypto";
        version = "0.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "aethoago@141.li";
      author = "Gregor Kleen";
      homepage = "";
      url = "";
      synopsis = "Reversable and secure encoding of object ids as filepaths";
      description = "";
      buildType = "Simple";
    };
    components = {
      "filepath-crypto" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cryptoids-types)
          (hsPkgs.cryptoids)
          (hsPkgs.filepath)
          (hsPkgs.sandi)
          (hsPkgs.case-insensitive)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.exceptions)
          (hsPkgs.encoding)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }