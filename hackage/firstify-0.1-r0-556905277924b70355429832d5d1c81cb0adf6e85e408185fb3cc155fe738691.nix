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
        name = "firstify";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2007-8, Neil Mitchell";
      maintainer = "ndmitchell@gmail.com";
      author = "Neil Mitchell";
      homepage = "http://www-users.cs.york.ac.uk/~ndm/firstify/";
      url = "";
      synopsis = "Defunctionalisation for Yhc Core";
      description = "A library to transform Yhc Core programs to first-order.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.yhccore)
          (hsPkgs.Safe)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.homeomorphic)
          (hsPkgs.mtl)
          (hsPkgs.containers)
        ];
      };
      exes = { "firstify" = {}; };
    };
  }