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
      specVersion = "1.6";
      identifier = {
        name = "happstack-server";
        version = "0.4.1";
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
      "library" = {
        depends  = (([
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.extensible-exceptions)
          (hsPkgs.filepath)
          (hsPkgs.HaXml)
          (hsPkgs.hslogger)
          (hsPkgs.happstack-data)
          (hsPkgs.happstack-util)
          (hsPkgs.html)
          (hsPkgs.MaybeT)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.old-locale)
          (hsPkgs.old-time)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.sendfile)
          (hsPkgs.template-haskell)
          (hsPkgs.time)
          (hsPkgs.utf8-string)
          (hsPkgs.xhtml)
          (hsPkgs.zlib)
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