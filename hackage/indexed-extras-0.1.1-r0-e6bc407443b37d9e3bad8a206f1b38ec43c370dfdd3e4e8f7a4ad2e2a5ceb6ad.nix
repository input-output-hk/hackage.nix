{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "indexed-extras"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012 Reiner Pope,\nCopyright (C) 2008 Edward A. Kmett,\nCopyright (C) 2004--2008 Dave Menendez,\nCopyright (C) 2007 Iavor Diatchki";
      maintainer = "Reiner Pope <reiner.pope@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "https://github.com/reinerp/indexed-extras";
      url = "";
      synopsis = "Indexed functors, monads and comonads that require extensions to Haskell98";
      description = "Indexed functors, monads and comonads that require extensiosn to Haskell98";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.indexed)
          (hsPkgs.mtl)
          (hsPkgs.pointed)
          (hsPkgs.bifunctors)
          ];
        };
      };
    }