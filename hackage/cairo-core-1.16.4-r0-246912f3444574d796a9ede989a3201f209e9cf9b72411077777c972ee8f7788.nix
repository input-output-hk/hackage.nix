{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "cairo-core"; version = "1.16.4"; };
      license = "BSD-3-Clause";
      copyright = "None";
      maintainer = "magiclouds@gmail.com";
      author = "Magicloud";
      homepage = "https://github.com/magicloud/cairo-core#readme";
      url = "";
      synopsis = "Cairo Haskell binding (core functions)";
      description = "Cairo Haskell binding (core functions). Please checkout cairo-opts for other functions.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath))
        (hsPkgs.buildPackages.haskell-src-exts or (pkgs.buildPackages.haskell-src-exts))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory))
        (hsPkgs.buildPackages.http-client or (pkgs.buildPackages.http-client))
        (hsPkgs.buildPackages.http-client-tls or (pkgs.buildPackages.http-client-tls))
        (hsPkgs.buildPackages.hxt or (pkgs.buildPackages.hxt))
        (hsPkgs.buildPackages.hxt-xpath or (pkgs.buildPackages.hxt-xpath))
        (hsPkgs.buildPackages.bytestring or (pkgs.buildPackages.bytestring))
        ];
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.monad-extras) (hsPkgs.transformers) ];
        pkgconfig = [ (pkgconfPkgs."cairo") ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs))
          ];
        };
      };
    }