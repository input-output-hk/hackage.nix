{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = {
        name = "symantic-http-pipes";
        version = "0.0.0.20190324";
        };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Julien Moutinho <julm+symantic-http@autogeree.net>";
      author = "Julien Moutinho <julm+symantic-http@autogeree.net>";
      homepage = "";
      url = "";
      synopsis = "Streaming support through pipes for symantic-http";
      description = "This library provides orphan instances gluing\n<https://hackage.haskell.org/package/symantic-http symantic-http>\nto the streaming engine <https://hackage.haskell.org/package/pipes pipes>\n(allowing to (safely) run effects (eg. in IO) during an HTTP transfer).\n\nFor learning how to use this library,\nyou can read the demo example\nin <git://git.autogeree.net/symantic-http symantic-http.git>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.symantic-http)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.http-api-data)
          (hsPkgs.http-media)
          (hsPkgs.http-types)
          (hsPkgs.lens-family-core)
          (hsPkgs.monad-classes)
          (hsPkgs.network-uri)
          (hsPkgs.pipes)
          (hsPkgs.pipes-bytestring)
          (hsPkgs.pipes-group)
          (hsPkgs.pipes-parse)
          (hsPkgs.pipes-safe)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.word8)
          ];
        };
      };
    }