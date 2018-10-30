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
      specVersion = "1.2.3";
      identifier = {
        name = "test-framework-quickcheck";
        version = "0.2.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Max Bolingbroke <batterseapower@hotmail.com>";
      author = "Max Bolingbroke <batterseapower@hotmail.com>";
      homepage = "http://batterseapower.github.com/test-framework/";
      url = "";
      synopsis = "QuickCheck support for the test-framework package.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.test-framework)
          (hsPkgs.QuickCheck)
        ] ++ (if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.random)
          ]
          else [ (hsPkgs.base) ]);
      };
    };
  }