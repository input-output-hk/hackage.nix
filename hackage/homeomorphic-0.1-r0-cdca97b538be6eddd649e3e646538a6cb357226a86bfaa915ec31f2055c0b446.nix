{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "homeomorphic";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2007-8, Neil Mitchell";
      maintainer = "ndmitchell@gmail.com";
      author = "Neil Mitchell";
      homepage = "http://www-users.cs.york.ac.uk/~ndm/homeomorphic/";
      url = "";
      synopsis = "Homeomorphic Embedding Test";
      description = "A library to carry out homeomorphic embedding tests.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.mtl)
            (hsPkgs.containers)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.mtl)
          ];
      };
    };
  }