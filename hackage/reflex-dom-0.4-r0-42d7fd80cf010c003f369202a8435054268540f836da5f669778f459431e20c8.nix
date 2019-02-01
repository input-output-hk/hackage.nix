{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      use-warp = false;
      webkit2gtk = true;
      use-reflex-optimizer = false;
      expose-all-unfoldings = false;
      build-examples = false;
      android = false;
      };
    package = {
      specVersion = "1.24";
      identifier = { name = "reflex-dom"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ryan.trinkle@gmail.com";
      author = "Ryan Trinkle";
      homepage = "";
      url = "";
      synopsis = "Functional Reactive Web Apps with Reflex";
      description = "Reflex-DOM is a Functional Reactive web framework based on the Reflex FRP engine.\n\nFor hackage documentation, please see: <https://hackage.haskell.org/package/reflex-dom-core>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.reflex)
          (hsPkgs.reflex-dom-core)
          (hsPkgs.text)
          ] ++ (pkgs.lib).optionals (flags.android) [
          (hsPkgs.aeson)
          (hsPkgs.android-activity)
          (hsPkgs.data-default)
          (hsPkgs.jsaddle)
          ]) ++ (pkgs.lib).optionals (!(compiler.isGhcjs && true)) (if system.isOsx || system.isIos
          then [
            (hsPkgs.data-default)
            (hsPkgs.jsaddle)
            (hsPkgs.jsaddle-wkwebview)
            ]
          else if flags.use-warp
            then [ (hsPkgs.jsaddle) (hsPkgs.jsaddle-warp) ]
            else if flags.webkit2gtk
              then [ (hsPkgs.jsaddle-webkit2gtk) ]
              else (pkgs.lib).optional (!flags.android) (hsPkgs.jsaddle-webkit2gtk));
        build-tools = (pkgs.lib).optional (flags.android) ((hsPkgs.buildPackages).hsc2hs);
        };
      exes = {
        "sortableList" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.dependent-map)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.random)
            (hsPkgs.reflex)
            (hsPkgs.reflex-dom)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            ];
          };
        "benchmark" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.reflex)
            (hsPkgs.reflex-dom)
            (hsPkgs.text)
            (hsPkgs.prim-uniq)
            (hsPkgs.dependent-map)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.ghcjs-dom)
            (hsPkgs.ghc-prim)
            (hsPkgs.random)
            (hsPkgs.dependent-sum)
            ];
          };
        "krausest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.reflex)
            (hsPkgs.reflex-dom)
            (hsPkgs.text)
            (hsPkgs.prim-uniq)
            (hsPkgs.dependent-map)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.ghcjs-dom)
            (hsPkgs.ghc-prim)
            (hsPkgs.random)
            (hsPkgs.dependent-sum)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }