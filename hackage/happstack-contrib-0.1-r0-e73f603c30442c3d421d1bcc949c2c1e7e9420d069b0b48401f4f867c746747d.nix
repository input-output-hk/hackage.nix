{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      base4 = true;
      tests = true;
    };
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "happstack-contrib";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Happstack Team <happs@googlegroups.com>";
      author = "Happstack team, HAppS LLC";
      homepage = "http://happstack.com";
      url = "";
      synopsis = "Web related tools and services.";
      description = "Collection of standalone applications";
      buildType = "Simple";
    };
    components = {
      "happstack-contrib" = {
        depends  = (([
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.old-time)
          (hsPkgs.bytestring)
          (hsPkgs.happstack-server)
          (hsPkgs.mtl)
          (hsPkgs.HTTP)
          (hsPkgs.directory)
          (hsPkgs.happstack-util)
          (hsPkgs.happstack-data)
          (hsPkgs.happstack-state)
          (hsPkgs.happstack-ixset)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix)) ++ pkgs.lib.optionals (flags.base4) [
          (hsPkgs.base)
          (hsPkgs.syb)
        ]) ++ pkgs.lib.optional (flags.tests) (hsPkgs.HUnit);
      };
      exes = {
        "happstack-contrib-tests" = {
          depends  = [ (hsPkgs.HUnit) ];
        };
      };
    };
  }