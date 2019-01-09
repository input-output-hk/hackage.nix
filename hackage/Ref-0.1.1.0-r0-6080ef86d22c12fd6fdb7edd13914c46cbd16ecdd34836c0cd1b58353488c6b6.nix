{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "Ref"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013 Carter T Schonwald";
      maintainer = "carter at wellposed dot com";
      author = "Carter Tazio Schonwald";
      homepage = "https://bitbucket.org/carter/ref";
      url = "";
      synopsis = "Generic Mutable Ref Abstraction Layer";
      description = "Ref is a generic layer over mutable references, currently only IO and ST refs.\nFuture extensions may include a generic api for shared state concurrency.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.ghc-prim) ]; };
      };
    }