{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      cassava = true;
      rawstring-qm = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "double-extra";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "2017(c) Marcin Tolysz";
      maintainer = "tolysz@gmail.com";
      author = "Marcin Tolysz";
      homepage = "https://github.com/tolysz/double-extra#readme";
      url = "";
      synopsis = "Missing presentations for Double numbers (fixed, scientific etc.)";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.double-conversion)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
        ] ++ pkgs.lib.optional (flags.cassava) (hsPkgs.cassava)) ++ pkgs.lib.optionals (flags.rawstring-qm) [
          (hsPkgs.rawstring-qm)
          (hsPkgs.text)
        ];
      };
    };
  }