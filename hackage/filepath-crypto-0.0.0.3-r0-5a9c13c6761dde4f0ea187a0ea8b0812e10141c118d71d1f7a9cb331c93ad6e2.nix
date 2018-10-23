{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "filepath-crypto";
        version = "0.0.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gregor Kleen <aethoago@141.li>";
      author = "Gregor Kleen <aethoago@141.li>";
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
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.cryptoids)
          (hsPkgs.cryptoids-types)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.sandi)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }