{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "inliterate";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "tomn@diffusionkinetics.com";
        author = "Tom Nielsen";
        homepage = "https://github.com/diffusionkinetics/open/inliterate";
        url = "";
        synopsis = "Interactive literate programming";
        description = "Evaluate markdown code blocks to show the results of running the code.";
        buildType = "Simple";
      };
      components = {
        inliterate = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.containers
            hsPkgs.cheapskate
            hsPkgs.blaze-html
            hsPkgs.time
            hsPkgs.plotlyhs
            hsPkgs.lucid
            hsPkgs.lucid-extras
            hsPkgs.haskell-src-exts
          ];
        };
        exes = {
          inlitpp = {
            depends  = [
              hsPkgs.base
              hsPkgs.inliterate
              hsPkgs.text
            ];
          };
        };
        tests = {
          test-inliterate = {
            depends  = [
              hsPkgs.base
              hsPkgs.inliterate
              hsPkgs.text
            ];
          };
          test-inliterate-pp = {
            depends  = [
              hsPkgs.base
              hsPkgs.inliterate
              hsPkgs.text
              hsPkgs.time
            ];
          };
        };
      };
    }