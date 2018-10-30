{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "wai-middleware-static";
        version = "0.8.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2012-2014 Andrew Farmer";
      maintainer = "Andrew Farmer <afarmer@ittc.ku.edu>";
      author = "Andrew Farmer <afarmer@ittc.ku.edu>";
      homepage = "https://github.com/scotty-web/wai-middleware-static";
      url = "";
      synopsis = "WAI middleware that serves requests to static files.";
      description = "WAI middleware that intercepts requests to static files and serves them\nif they exist.\n\n[WAI] <http://hackage.haskell.org/package/wai>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cryptonite)
          (hsPkgs.memory)
          (hsPkgs.directory)
          (hsPkgs.expiring-cache-map)
          (hsPkgs.filepath)
          (hsPkgs.http-types)
          (hsPkgs.mime-types)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.semigroups)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.wai)
        ];
      };
    };
  }