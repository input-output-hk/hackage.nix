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
        name = "hoist-error";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "Copyright (c) 2014 AlephCloud, Inc";
      maintainer = "jon@jonmsterling.com";
      author = "Jon Sterling";
      homepage = "";
      url = "";
      synopsis = "Some convenience facilities for hoisting errors into a monad";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
        ];
      };
    };
  }