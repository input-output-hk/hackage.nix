{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "multi-cabal";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "aka.bash0r@gmail.com";
      author = "Nils 'bash0r' Jonsson";
      homepage = "https://github.com/aka-bash0r/multi-cabal";
      url = "";
      synopsis = "A tool supporting multi cabal project builds.";
      description = "A tool supporting multi cabal project builds.";
      buildType = "Simple";
    };
    components = {
      "multi-cabal" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
        ];
      };
      exes = {
        "multi-cabal" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.bytestring)
            (hsPkgs.process)
            (hsPkgs.strict)
            (hsPkgs.AAI)
            (hsPkgs.multi-cabal)
          ];
        };
      };
      tests = {
        "multi-cabal-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
            (hsPkgs.multi-cabal)
          ];
        };
      };
    };
  }