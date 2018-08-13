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
      specVersion = "1.16";
      identifier = {
        name = "Saturnin";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2015 Jan Matějka <yac@blesmrt.net>";
      maintainer = "<yac@blesmrt.net>";
      author = "Jan Matějka";
      homepage = "";
      url = "";
      synopsis = "Saturnin  CI / Job System";
      description = "Saturnin  CI / Job System";
      buildType = "Simple";
    };
    components = {
      "Saturnin" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.ini)
          (hsPkgs.data-default)
          (hsPkgs.text)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.temporary)
          (hsPkgs.directory)
          (hsPkgs.unordered-containers)
          (hsPkgs.spawn)
          (hsPkgs.yaml)
          (hsPkgs.time)
          (hsPkgs.old-locale)
          (hsPkgs.formatting)
          (hsPkgs.bytestring)
          (hsPkgs.stm)
          (hsPkgs.mtl)
          (hsPkgs.either)
          (hsPkgs.exceptions)
        ];
      };
      exes = {
        "saturnin" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Saturnin)
          ];
        };
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Saturnin)
            (hsPkgs.mtl)
            (hsPkgs.either)
            (hsPkgs.data-default)
            (hsPkgs.hspec)
          ];
        };
        "documentation" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.regex-compat)
          ];
        };
        "style" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hlint)
          ];
        };
      };
    };
  }