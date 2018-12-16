{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { tests = false; };
    package = {
      specVersion = "1.8.0.6";
      identifier = {
        name = "newt";
        version = "0.0.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "creswick@gmail.com";
      author = "Rogan Creswick";
      homepage = "";
      url = "";
      synopsis = "A trivially simple app to create things from simple templates.";
      description = "Instantiates text things from templates.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.filemanip)
          (hsPkgs.mtl)
          (hsPkgs.array)
          (hsPkgs.Unixutils)
          (hsPkgs.safe)
          (hsPkgs.cmdargs)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ] ++ [
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.filepath)
        ];
      };
      exes = {
        "newt" = {
          depends = [
            (hsPkgs.newt)
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.cmdargs)
          ] ++ [ (hsPkgs.containers) ];
        };
        "test-newt" = {
          depends = [
            (hsPkgs.newt)
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.QuickCheck)
            (hsPkgs.uuid)
            (hsPkgs.Unixutils)
            (hsPkgs.safe)
          ] ++ [
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }