{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "rib"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Sridhar Ratnakumar";
      maintainer = "srid@srid.ca";
      author = "Sridhar Ratnakumar";
      homepage = "https://github.com/srid/rib#readme";
      url = "";
      synopsis = "";
      description = "Haskell library for writing your own static site generator";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.binary)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.async)
          (hsPkgs.clay)
          (hsPkgs.mtl)
          (hsPkgs.cmdargs)
          (hsPkgs.data-default)
          (hsPkgs.fsnotify)
          (hsPkgs.http-types)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.lucid)
          (hsPkgs.pandoc)
          (hsPkgs.pandoc-types)
          (hsPkgs.safe)
          (hsPkgs.skylighting)
          (hsPkgs.pandoc-include-code)
          (hsPkgs.shake)
          (hsPkgs.wai)
          (hsPkgs.wai-app-static)
          (hsPkgs.wai-extra)
          (hsPkgs.warp)
          (hsPkgs.base)
          (hsPkgs.pandoc)
          ];
        };
      };
    }