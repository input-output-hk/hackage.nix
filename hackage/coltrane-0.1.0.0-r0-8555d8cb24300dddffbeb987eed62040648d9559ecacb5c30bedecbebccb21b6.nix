{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "coltrane"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 Sean Welleck";
      maintainer = "Sean Welleck";
      author = "Sean Welleck";
      homepage = "https://github.com/wellecks/coltrane";
      url = "";
      synopsis = "A jazzy, minimal web framework for Haskell, inspired by Sinatra.";
      description = "Coltrane is a minimal web framework for Haskell, inspired by Ruby's Sinatra framework. Coltrane lets you write simple web applications in just a few lines of Haskell code.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.regex-compat)
          (hsPkgs.mtl)
          (hsPkgs.http-types)
          (hsPkgs.wai)
          (hsPkgs.warp)
          (hsPkgs.wai-extra)
          (hsPkgs.HUnit)
          (hsPkgs.HTTP)
          ];
        };
      };
    }