{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "symantic-http-test"; version = "0.0.0.20190324"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Julien Moutinho <julm+symantic-http@autogeree.net>";
      author = "Julien Moutinho <julm+symantic-http@autogeree.net>";
      homepage = "";
      url = "";
      synopsis = "Test symantic-http and its companion libraries";
      description = "Test-Suite for:\n\n* <https://hackage.haskell.org/package/symantic-http symantic-http>\n* <https://hackage.haskell.org/package/symantic-http-client symantic-http-client>.\n* <https://hackage.haskell.org/package/symantic-http-pipes symantic-http-pipes>.\n* <https://hackage.haskell.org/package/symantic-http-server symantic-http-server>.";
      buildType = "Simple";
      };
    components = {
      tests = {
        "symantic-http-test" = {
          depends = [
            (hsPkgs.symantic-http)
            (hsPkgs.symantic-http-client)
            (hsPkgs.symantic-http-server)
            (hsPkgs.symantic-http-pipes)
            (hsPkgs.base)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.filepath)
            (hsPkgs.hashable)
            (hsPkgs.hspec)
            (hsPkgs.hspec-wai)
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
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            (hsPkgs.tasty-hunit)
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