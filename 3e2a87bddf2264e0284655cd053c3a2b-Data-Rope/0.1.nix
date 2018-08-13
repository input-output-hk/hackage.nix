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
        name = "Data-Rope";
        version = "0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Pierre-Etienne Meunier <pierreetienne.meunier@gmail.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Ropes, an alternative to (Byte)Strings.";
      description = "Ropes : an alternative to Strings,\na time and space-efficient representation of character\nstrings.";
      buildType = "Simple";
    };
    components = {
      "Data-Rope" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.unix)
          (hsPkgs.bytestring)
        ];
      };
    };
  }