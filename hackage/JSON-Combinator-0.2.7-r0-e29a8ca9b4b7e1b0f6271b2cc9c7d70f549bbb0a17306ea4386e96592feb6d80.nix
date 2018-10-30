{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "JSON-Combinator";
        version = "0.2.7";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tony Morris";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
      homepage = "";
      url = "";
      synopsis = "A combinator library on top of a generalised JSON type";
      description = "A combinator library on top of a generalised JSON type. The highest-level module is\n@Text.JSON.Combinator@ and it is expected that no other module need to be explicitly imported.\n\nInstances for the combinators are provided for four libraries available on hackage:\n\n* json (@Text.JSON@)\n\n* JSONb (@Text.JSONb@)\n\n* hjson (@Text.HJson@)\n\n* aeson (@Data.Aeson@)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.JSONb)
          (hsPkgs.json)
          (hsPkgs.hjson)
          (hsPkgs.vector)
          (hsPkgs.text)
          (hsPkgs.attoparsec)
          (hsPkgs.aeson)
          (hsPkgs.containers)
          (hsPkgs.parsec)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-trie)
          (hsPkgs.failure)
        ];
      };
    };
  }