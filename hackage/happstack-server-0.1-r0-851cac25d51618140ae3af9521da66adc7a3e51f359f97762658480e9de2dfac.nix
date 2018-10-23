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
        name = "happstack-server";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Happstack team <happs@googlegroups.com>";
      author = "Happstack team, HAppS LLC";
      homepage = "http://happstack.com";
      url = "";
      synopsis = "Web related tools and services.";
      description = "Web framework";
      buildType = "Simple";
    };
    components = {
      "happstack-server" = {
        depends  = (([
          (hsPkgs.base)
          (hsPkgs.HaXml)
          (hsPkgs.parsec)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.hslogger)
          (hsPkgs.happstack-data)
          (hsPkgs.happstack-util)
          (hsPkgs.happstack-state)
          (hsPkgs.happstack-ixset)
          (hsPkgs.template-haskell)
          (hsPkgs.xhtml)
          (hsPkgs.html)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.old-time)
          (hsPkgs.old-locale)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.extensible-exceptions)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix)) ++ pkgs.lib.optionals (flags.base4) [
          (hsPkgs.base)
          (hsPkgs.syb)
        ]) ++ pkgs.lib.optional (flags.tests) (hsPkgs.HUnit);
      };
      exes = {
        "happstack-server-tests" = {
          depends  = [ (hsPkgs.HUnit) ];
        };
      };
    };
  }