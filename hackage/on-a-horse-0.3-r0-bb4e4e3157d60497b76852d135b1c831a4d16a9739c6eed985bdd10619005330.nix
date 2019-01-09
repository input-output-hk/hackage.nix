{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "on-a-horse"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jason@on-a-horse.org";
      author = "Jason Priestley";
      homepage = "http://haskell.on-a-horse.org";
      url = "";
      synopsis = "\"Haskell on a Horse\" - A combinatorial web framework";
      description = "Please read the introduction at on-a-horse.org";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.safe)
          (hsPkgs.split)
          (hsPkgs.warp)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.utf8-string)
          (hsPkgs.case-insensitive)
          (hsPkgs.arrows)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.bytestring)
          (hsPkgs.time)
          (hsPkgs.wai-extra)
          (hsPkgs.cookie)
          (hsPkgs.http-types)
          (hsPkgs.wai)
          (hsPkgs.transformers)
          ];
        };
      };
    }