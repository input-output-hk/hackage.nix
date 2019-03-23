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
      identifier = { name = "reflex-dom-core"; version = "0.5"; };
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
          (hsPkgs.random)
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
        "hydration" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.chrome-test-utils)
            (hsPkgs.constraints)
            (hsPkgs.constraints-extras)
            (hsPkgs.containers)
            (hsPkgs.dependent-map)
            (hsPkgs.dependent-sum)
            (hsPkgs.dependent-sum-template)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.ghcjs-dom)
            (hsPkgs.hspec)
            (hsPkgs.hspec-webdriver)
            (hsPkgs.http-types)
            (hsPkgs.HUnit)
            (hsPkgs.jsaddle)
            (hsPkgs.jsaddle-warp)
            (hsPkgs.lens)
            (hsPkgs.lifted-base)
            (hsPkgs.network)
            (hsPkgs.random)
            (hsPkgs.ref-tf)
            (hsPkgs.reflex)
            (hsPkgs.reflex-dom-core)
            (hsPkgs.process)
            (hsPkgs.silently)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.wai)
            (hsPkgs.wai-websockets)
            (hsPkgs.warp)
            (hsPkgs.webdriver)
            (hsPkgs.websockets)
            ];
          };
        "gc" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.chrome-test-utils)
            (hsPkgs.jsaddle)
            (hsPkgs.jsaddle-warp)
            (hsPkgs.process)
            (hsPkgs.reflex)
            (hsPkgs.reflex-dom-core)
            (hsPkgs.text)
            ];
          };
        };
      };
    }