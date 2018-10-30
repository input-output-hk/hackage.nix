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
        name = "ghcjs-hplay";
        version = "0.3.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto Gomez Corona";
      homepage = "https://github.com/agocorona/ghcjs-hplay";
      url = "";
      synopsis = "client-side Web EDSL for transient nodes running in the Web browser";
      description = "client-side haskell framework that compiles to javascript with the ghcjs compiler and run over transient. See homepage";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = if compiler.isGhcjs && compiler.version.ge "0.1"
          then [
            (hsPkgs.base)
            (hsPkgs.ghcjs-base)
            (hsPkgs.transformers)
            (hsPkgs.containers)
            (hsPkgs.transient)
            (hsPkgs.transient-universe)
            (hsPkgs.mtl)
            (hsPkgs.ghcjs-perch)
            (hsPkgs.ghcjs-base)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.containers)
            (hsPkgs.transient)
            (hsPkgs.transient-universe)
            (hsPkgs.mtl)
            (hsPkgs.ghcjs-perch)
          ];
      };
    };
  }