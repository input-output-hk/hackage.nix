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
        name = "parsers-megaparsec";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
      author = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
      homepage = "https://github.com/qfpl/parsers-megaparsec";
      url = "";
      synopsis = "`parsers` instances for Megaparsec";
      description = "A newtype around ParsecT with instances for Parsing,\nCharParsing, LookAheadParsing, and TokenParsing";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.fail)
          (hsPkgs.megaparsec)
          (hsPkgs.parsers)
          (hsPkgs.mtl)
          (hsPkgs.semigroups)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
    };
  }