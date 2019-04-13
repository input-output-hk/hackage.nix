{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = {
        name = "symantic-http-client";
        version = "0.0.1.20190410";
        };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Julien Moutinho <julm+symantic-http@autogeree.net>";
      author = "Julien Moutinho <julm+symantic-http@autogeree.net>";
      homepage = "";
      url = "";
      synopsis = "symantic-http applied to the derivation of HTTP clients";
      description = "This library applies <https://hackage.haskell.org/package/symantic-http symantic-http>\nto the building of an HTTP client (request building and response decoding)\nbased upon <https://hackage.haskell.org/package/http-client http-client>.\n\nFor learning how to use this library,\nyou can read the demo example\nin <git://git.autogeree.net/symantic-http symantic-http.git>.";
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
          (hsPkgs.http-client)
          (hsPkgs.http-media)
          (hsPkgs.http-types)
          (hsPkgs.monad-classes)
          (hsPkgs.network-uri)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.word8)
          ];
        };
      };
    }