{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "conduit-combinators"; version = "0.2.6.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael snoyman";
      homepage = "https://github.com/fpco/conduit-combinators";
      url = "";
      synopsis = "Commonly used conduit functions, for both chunked and unchunked data";
      description = "Provides a replacement for Data.Conduit.List, as well as a convenient Conduit module.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.chunked-data)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.primitive)
          (hsPkgs.mono-traversable)
          (hsPkgs.vector)
          (hsPkgs.system-fileio)
          (hsPkgs.system-filepath)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.void)
          (hsPkgs.mwc-random)
          (hsPkgs.unix-compat)
          (hsPkgs.base16-bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.resourcet)
          (hsPkgs.monad-control)
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs.unix);
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.conduit-combinators)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.transformers)
            (hsPkgs.chunked-data)
            (hsPkgs.mono-traversable)
            (hsPkgs.silently)
            (hsPkgs.bytestring)
            (hsPkgs.mwc-random)
            (hsPkgs.base16-bytestring)
            (hsPkgs.base64-bytestring)
            (hsPkgs.system-filepath)
            ];
          };
        };
      };
    }