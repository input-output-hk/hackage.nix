{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      use-template-haskell = true;
      use-reflex-optimizer = false;
      expose-all-unfoldings = false;
      profile-reflex = false;
      };
    package = {
      specVersion = "1.9.2";
      identifier = { name = "reflex-dom-core"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ryan.trinkle@gmail.com";
      author = "Ryan Trinkle";
      homepage = "";
      url = "";
      synopsis = "Functional Reactive Web Apps with Reflex";
      description = "Reflex-DOM is a Functional Reactive web framework based on the Reflex FRP engine";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.bimap)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.constraints)
          (hsPkgs.contravariant)
          (hsPkgs.data-default)
          (hsPkgs.dependent-map)
          (hsPkgs.dependent-sum)
          (hsPkgs.dependent-sum-template)
          (hsPkgs.directory)
          (hsPkgs.exception-transformers)
          (hsPkgs.ghcjs-dom)
          (hsPkgs.jsaddle)
          (hsPkgs.keycode)
          (hsPkgs.lens)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.primitive)
          (hsPkgs.ref-tf)
          (hsPkgs.reflex)
          (hsPkgs.semigroups)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.these)
          (hsPkgs.transformers)
          (hsPkgs.network-uri)
          (hsPkgs.zenc)
          ] ++ (if compiler.isGhcjs && true
          then [ (hsPkgs.ghcjs-base) (hsPkgs.hashable) ]
          else (pkgs.lib).optional (!system.isWindows) (hsPkgs.unix))) ++ (if flags.use-template-haskell
          then [
            (hsPkgs.dependent-sum)
            (hsPkgs.dependent-sum-template)
            (hsPkgs.template-haskell)
            ]
          else [ (hsPkgs.dependent-sum) ]);
        };
      tests = {
        "hlint" = { depends = [ (hsPkgs.base) (hsPkgs.hlint) ]; };
        "gc" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.reflex)
            (hsPkgs.reflex-dom-core)
            (hsPkgs.jsaddle)
            (hsPkgs.jsaddle-warp)
            (hsPkgs.linux-namespaces)
            (hsPkgs.process)
            (hsPkgs.temporary)
            (hsPkgs.unix)
            ];
          };
        };
      };
    }