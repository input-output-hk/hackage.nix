{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "unboxed-ref"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Winter 2017";
      maintainer = "drkoster@qq.com";
      author = "winter";
      homepage = "https://github.com/winterland1989/unboxed-ref";
      url = "";
      synopsis = "Fast unboxed references for ST and IO monad";
      description = "Fast unboxed references for ST and IO monad";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.ghc-prim) (hsPkgs.primitive) ];
        };
      };
    }