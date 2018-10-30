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
        name = "data-emoticons";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "runeblaze@excite.co.jp";
      author = "RuneBlaze";
      homepage = "";
      url = "";
      synopsis = "Combinator emoticons: data-aviary in the flavor of emoticons";
      description = "Combinators copied from Data.Aviary.Birds renamed according to emoticons.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }