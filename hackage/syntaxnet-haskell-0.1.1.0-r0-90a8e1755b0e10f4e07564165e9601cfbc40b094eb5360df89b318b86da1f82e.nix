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
        name = "syntaxnet-haskell";
        version = "0.1.1.0";
      };
      license = "MIT";
      copyright = "Copyright: (c) 2017 Michal Gajda, Sergey Bushnyak";
      maintainer = "sergey.bushnyak@sigrlami.eu";
      author = "Sergey Bushnyak, Michal Gajda";
      homepage = "https://github.com/mgajda/syntaxnet-haskell#readme";
      url = "";
      synopsis = "Working with Google's SyntaxNet output files - CoNLL, Tree";
      description = "Allows to parse SyntaxNet output files in CoNLL or Syntax Tree formats.";
      buildType = "Simple";
    };
    components = {
      "syntaxnet-haskell" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.aeson)
          (hsPkgs.lens)
          (hsPkgs.vector)
          (hsPkgs.text)
          (hsPkgs.text-format)
          (hsPkgs.data-default)
          (hsPkgs.cassava)
          (hsPkgs.containers)
          (hsPkgs.protolude)
          (hsPkgs.safe)
          (hsPkgs.split)
          (hsPkgs.haskell-conll)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.hspec)
            (hsPkgs.haskell-conll)
            (hsPkgs.cassava)
          ];
        };
      };
    };
  }