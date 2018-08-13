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
        name = "serv";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2015 Joseph Abrahamson";
      maintainer = "me@jspha.com";
      author = "Joseph Abrahamson <me@jspha.com>";
      homepage = "http://github.com/tel/serv#readme";
      url = "";
      synopsis = "Dependently typed API server framework";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "serv" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.http-media)
          (hsPkgs.http-types)
          (hsPkgs.mtl)
          (hsPkgs.tagged)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.wai)
        ];
      };
      exes = {
        "test-server" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.serv)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "serv-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.serv)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-ant-xml)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
          ];
        };
      };
    };
  }