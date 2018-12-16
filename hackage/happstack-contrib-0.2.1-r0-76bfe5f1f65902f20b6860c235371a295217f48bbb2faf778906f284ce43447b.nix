{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      base4 = true;
      tests = false;
    };
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "happstack-contrib";
        version = "0.2.1";
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
      "library" = {
        depends = ((([
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.happstack-server)
          (hsPkgs.happstack-util)
          (hsPkgs.happstack-state)
          (hsPkgs.happstack-ixset)
          (hsPkgs.happstack-data)
          (hsPkgs.HTTP)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.old-time)
        ] ++ pkgs.lib.optional (flags.tests) (hsPkgs.template-haskell)) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix)) ++ pkgs.lib.optionals (flags.base4) [
          (hsPkgs.base)
          (hsPkgs.syb)
        ]) ++ pkgs.lib.optional (flags.tests) (hsPkgs.HUnit);
      };
      exes = {
        "happstack-contrib-tests" = {
          depends = [ (hsPkgs.HUnit) ];
        };
      };
    };
  }