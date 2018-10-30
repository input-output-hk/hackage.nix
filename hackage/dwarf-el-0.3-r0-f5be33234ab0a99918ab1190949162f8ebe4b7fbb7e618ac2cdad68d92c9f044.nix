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
      specVersion = "1.6";
      identifier = {
        name = "dwarf-el";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Eyal Lotem, Erik Charlebois";
      maintainer = "Eyal Lotem <eyal.lotem@gmail.com>";
      author = "Eyal Lotem, Erik Charlebois";
      homepage = "";
      url = "";
      synopsis = "Parser for DWARF debug format.";
      description = "Parser for DWARF debug format.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.binary)
          (hsPkgs.text)
          (hsPkgs.text-show)
        ];
      };
    };
  }