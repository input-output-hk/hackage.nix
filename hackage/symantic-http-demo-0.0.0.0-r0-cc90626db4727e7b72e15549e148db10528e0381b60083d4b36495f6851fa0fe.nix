{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "symantic-http-demo"; version = "0.0.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Julien Moutinho <julm+symantic-http@autogeree.net>";
      author = "Julien Moutinho <julm+symantic-http@autogeree.net>";
      homepage = "";
      url = "";
      synopsis = "Demo for symantic-http and its companion libraries";
      description = "Demo for:\n\n* <https://hackage.haskell.org/package/symantic-http symantic-http>\n* <https://hackage.haskell.org/package/symantic-http-client symantic-http-client>.\n* <https://hackage.haskell.org/package/symantic-http-pipes symantic-http-pipes>.\n* <https://hackage.haskell.org/package/symantic-http-server symantic-http-server>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.symantic-http)
          (hsPkgs.base)
          (hsPkgs.pipes)
          (hsPkgs.text)
          ];
        };
      exes = {
        "symantic-http-demo-client" = {
          depends = [
            (hsPkgs.symantic-http-demo)
            (hsPkgs.symantic-http)
            (hsPkgs.symantic-http-client)
            (hsPkgs.symantic-http-pipes)
            (hsPkgs.base)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.http-api-data)
            (hsPkgs.http-client)
            (hsPkgs.http-media)
            (hsPkgs.http-types)
            (hsPkgs.monad-classes)
            (hsPkgs.network)
            (hsPkgs.network-uri)
            (hsPkgs.pipes)
            (hsPkgs.pipes-bytestring)
            (hsPkgs.pipes-safe)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.warp)
            ];
          };
        "symantic-http-demo-server" = {
          depends = [
            (hsPkgs.symantic-http-demo)
            (hsPkgs.symantic-http)
            (hsPkgs.symantic-http-server)
            (hsPkgs.symantic-http-pipes)
            (hsPkgs.base)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.http-api-data)
            (hsPkgs.http-client)
            (hsPkgs.http-media)
            (hsPkgs.http-types)
            (hsPkgs.monad-classes)
            (hsPkgs.network)
            (hsPkgs.network-uri)
            (hsPkgs.pipes)
            (hsPkgs.pipes-bytestring)
            (hsPkgs.pipes-safe)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.warp)
            ];
          };
        };
      };
    }