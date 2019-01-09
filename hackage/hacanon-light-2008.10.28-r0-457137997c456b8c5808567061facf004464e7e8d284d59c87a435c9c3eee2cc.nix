{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "hacanon-light"; version = "2008.10.28"; };
      license = "BSD-3-Clause";
      copyright = "2004-2008, Lemmih";
      maintainer = "Lemmih (lemmih@gmail.com)";
      author = "Lemmih (lemmih@gmail.com)";
      homepage = "";
      url = "";
      synopsis = "Template Haskell framework for automatic FFI code generation.";
      description = "Combinatorial library for generating foreign bindings using TH.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.mtl) (hsPkgs.template-haskell) ];
        };
      };
    }