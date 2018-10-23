{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "myo";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "alfredo.dinapoli@gmail.com";
      author = "Alfredo Di Napoli";
      homepage = "http://github.com/adinapoli/myo";
      url = "";
      synopsis = "Haskell binding to the Myo armband";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "myo" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.template-haskell)
          (hsPkgs.websockets)
          (hsPkgs.aeson)
          (hsPkgs.lens-family)
          (hsPkgs.lens-family-th)
          (hsPkgs.vector)
          (hsPkgs.text)
          (hsPkgs.scientific)
          (hsPkgs.inline-c)
        ];
        libs = [ (pkgs."stdc++") ];
      };
      exes = {
        "myo-ws-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.myo)
            (hsPkgs.websockets)
            (hsPkgs.aeson)
            (hsPkgs.lens-family)
          ];
        };
      };
      tests = {
        "myo-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.myo)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
    };
  }