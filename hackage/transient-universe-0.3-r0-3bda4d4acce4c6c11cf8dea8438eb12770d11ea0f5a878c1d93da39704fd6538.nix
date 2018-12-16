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
        name = "transient-universe";
        version = "0.3";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto G. Corona";
      homepage = "http://www.fpcomplete.com/user/agocorona";
      url = "";
      synopsis = "remote execution and map-reduce: distributed computing for transient";
      description = "see <http://github.com/agocorona/transient>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = if compiler.isGhcjs && compiler.version.ge "0.1"
          then [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.random)
            (hsPkgs.transient)
            (hsPkgs.containers)
            (hsPkgs.stm)
            (hsPkgs.transformers)
            (hsPkgs.process)
            (hsPkgs.bytestring)
            (hsPkgs.time)
            (hsPkgs.ghcjs-base)
            (hsPkgs.ghcjs-prim)
            (hsPkgs.text)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.random)
            (hsPkgs.transient)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.stm)
            (hsPkgs.HTTP)
            (hsPkgs.network)
            (hsPkgs.transformers)
            (hsPkgs.process)
            (hsPkgs.network-info)
            (hsPkgs.bytestring)
            (hsPkgs.time)
            (hsPkgs.vector)
            (hsPkgs.TCache)
            (hsPkgs.websockets)
            (hsPkgs.network-uri)
            (hsPkgs.case-insensitive)
            (hsPkgs.hashable)
            (hsPkgs.text)
          ];
      };
    };
  }