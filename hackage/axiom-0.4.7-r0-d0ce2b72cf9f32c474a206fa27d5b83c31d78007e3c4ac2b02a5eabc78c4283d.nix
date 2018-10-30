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
        name = "axiom";
        version = "0.4.7";
      };
      license = "MIT";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto Gómez Corona";
      homepage = "https://github.com/transient-haskell/axiom";
      url = "";
      synopsis = "Web EDSL for running in browsers and server nodes using transient";
      description = "Client-and Server-side Haskell framework that compiles to javascript with the GHCJS compiler and run over Transient.  See homepage";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          (hsPkgs.transient)
          (hsPkgs.transient-universe)
          (hsPkgs.mtl)
          (hsPkgs.ghcjs-perch)
        ] ++ (if compiler.isGhcjs && compiler.version.ge "0.1"
          then [ (hsPkgs.ghcjs-base) ]
          else [
            (hsPkgs.bytestring)
            (hsPkgs.directory)
          ]);
      };
    };
  }