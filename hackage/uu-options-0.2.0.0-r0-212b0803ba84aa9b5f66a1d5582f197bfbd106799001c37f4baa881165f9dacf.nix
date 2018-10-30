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
        name = "uu-options";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "S Doaitse Swierstra";
      maintainer = "Doaitse Swierstra";
      author = "Doaitse Swierstra, Utrecht University";
      homepage = "http://www.cs.uu.nl/wiki/bin/view/HUT/ParserCombinators";
      url = "";
      synopsis = "Parse command line options using uu-interleave and uu-parsinglib";
      description = "Using the new Control.Applicative.Interleaved module we use the uu-parsinglib library to construct extremely concise command line processors, which provide\nhelpful information when called incorrectly.\n\nThe module contains a module `Options.UU.Demo` which serves as an example of how to use the various options of the module; you may take a look at the source code.\n\nIt also contains a function demo which may be called from within ghci to experiment with.\n\nBackground  information can be found in a Technical Report at <http://www.cs.uu.nl/research/techreps/UU-CS-2013-005.html>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.uu-parsinglib)
          (hsPkgs.uu-interleaved)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.template-haskell)
          (hsPkgs.lenses)
        ];
      };
    };
  }