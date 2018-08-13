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
        name = "wai-route";
        version = "0.3.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "2014 Roman S. Borschel";
      maintainer = "Roman S. Borschel <roman@pkaboo.org>";
      author = "Roman S. Borschel";
      homepage = "";
      url = "";
      synopsis = "Minimalistic, efficient routing for WAI";
      description = "\nSimple routing for applications using the WAI, based on an\nefficient tree structure. Routes are defined as string literals\nand path segments prefixed with a ':' indicate captures.\n\nA sample is available at: <https://github.com/romanb/wai-route/blob/master/sample/Main.hs>.";
      buildType = "Simple";
    };
    components = {
      "wai-route" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.wai)
          (hsPkgs.unordered-containers)
          (hsPkgs.http-types)
          (hsPkgs.bytestring)
        ];
      };
      tests = {
        "wai-route-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.http-types)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.wai)
            (hsPkgs.wai-route)
          ];
        };
      };
    };
  }