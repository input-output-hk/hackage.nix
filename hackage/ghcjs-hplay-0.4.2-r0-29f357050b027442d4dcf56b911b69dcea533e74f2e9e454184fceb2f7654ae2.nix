{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ghcjs-hplay"; version = "0.4.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto Gómez Corona";
      homepage = "https://github.com/transient-haskell/ghcjs-hplay";
      url = "";
      synopsis = "Client-side web EDSL for transient nodes running in the web browser";
      description = "Client-side Haskell framework that compiles to javascript with the GHCJS compiler and run over Transient.  See homepage";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          (hsPkgs.transient)
          (hsPkgs.transient-universe)
          (hsPkgs.mtl)
          (hsPkgs.ghcjs-perch)
          ] ++ (if compiler.isGhcjs && (compiler.version).ge "0.1"
          then [ (hsPkgs.ghcjs-base) ]
          else [ (hsPkgs.bytestring) (hsPkgs.directory) ]);
        };
      };
    }