{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "strict-ghc-plugin"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) the GHC authors";
      maintainer = "Austin Seipp <mad.one@gmail.com>";
      author = "The GHC authors";
      homepage = "http://thoughtpolice.github.com/strict-ghc-plugin";
      url = "";
      synopsis = "Compiler plugin for making Haskell strict";
      description = "This plugin gives an example of defining a compiler plugin for\nGHC. You mark functions with the `Strictify` annotation and GHC\nmakes the function strict (by recursively expanding non-recursive\nlet bindings into case bindings.)";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.ghc) (hsPkgs.syb) ]; };
      };
    }