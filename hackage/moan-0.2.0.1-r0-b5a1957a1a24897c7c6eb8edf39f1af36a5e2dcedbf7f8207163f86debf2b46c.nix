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
      specVersion = "1.10";
      identifier = {
        name = "moan";
        version = "0.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "vjeran.crnjak@gmail.com";
      author = "Vjeran Crnjak";
      homepage = "https://github.com/vjeranc/moan";
      url = "";
      synopsis = "Language-agnostic analyzer for positional morphosyntactic tags";
      description = "Implementation of a space-efficient morphosyntactic analyzer.\nIt solves a problem of providing a set of possible tags for a given word.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.zlib)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.dawg)
          (hsPkgs.tagset-positional)
          (hsPkgs.regex-tdfa-text)
          (hsPkgs.regex-tdfa)
        ];
      };
    };
  }