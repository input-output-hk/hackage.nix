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
      specVersion = "1.2";
      identifier = {
        name = "thespian";
        version = "0.999";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "alexander.the.average@gmail.com";
      author = "Alex Constandache";
      homepage = "http://bitbucket.org/alinabi/thespian";
      url = "";
      synopsis = "Lightweight Erlang-style actors for Haskell";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.containers)
        ];
      };
    };
  }