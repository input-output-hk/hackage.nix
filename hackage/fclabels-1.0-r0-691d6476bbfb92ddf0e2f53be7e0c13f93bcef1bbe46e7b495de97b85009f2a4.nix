{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "fclabels";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sebastiaan Visser <code@fvisser.nl>";
      author = "Sebastiaan Visser, Erik Hesselink, Chris Eidhof, Sjoerd Visscher.";
      homepage = "";
      url = "";
      synopsis = "First class accessor labels.";
      description = "This package provides first class labels that can act as\nbidirectional record fields. The labels can be derived\nautomatically using Template Haskell which means you don't have\nto write any boilerplate yourself. The labels are implemented as\nlenses and are fully composable. Labels can be used to /get/,\n/set/ and /modify/ parts of a datatype in a consistent way.\n\nSee \"Data.Label\" for an introductory explanation.\n\nInternally lenses are not tied to Haskell functions directly,\nbut are implemented as arrows. Arrows allow the lenses to be run\nin custom computational contexts. This approach allows us to\nmake partial lenses that point to fields of multi-constructor\ndatatypes in an elegant way.\n\nSee the \"Data.Label.Maybe\" module for the use of partial labels.\n\n> 0.11.2 -> 1.0\n>   - Added abstract arrow based core module.\n>   - Allow both pure and failing labels to be derived.\n>   - Major API and documentation cleanup.\n>   - Renamed lots of exposed function names.";
      buildType = "Simple";
    };
    components = {
      "fclabels" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
        ];
      };
    };
  }