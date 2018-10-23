{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = {
        name = "annotated-wl-pprint";
        version = "0.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "david@davidchristiansen.dk";
      author = "Daan Leijen, David Raymond Christiansen";
      homepage = "";
      url = "";
      synopsis = "The Wadler/Leijen Pretty Printer, with annotation support";
      description = "This is a modified version of wl-pprint, which was based on Wadler's\npaper \"A Prettier  Printer\".  See the haddocks for full info.  This\nversion allows the library user to annotate the text with semantic\ninformation, which can later be rendered in a variety of ways.";
      buildType = "Simple";
    };
    components = {
      "annotated-wl-pprint" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }