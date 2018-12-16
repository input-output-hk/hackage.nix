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
        name = "cse-ghc-plugin";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) the GHC authors";
      maintainer = "Austin Seipp <mad.one@gmail.com>";
      author = "The GHC authors";
      homepage = "http://thoughtpolice.github.com/cse-ghc-plugin";
      url = "";
      synopsis = "Compiler plugin for common subexpression elimination";
      description = "This library is a conversion of GHC's internal Common Subexpression\nElimination pass for Core to a compiler plugin. See the included test\nfor an example of how to enable it.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ghc)
        ];
      };
    };
  }