{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      production = true;
      devel = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "tkyprof";
        version = "0.0.5.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mitsutoshi Aoe <maoe@foldr.in>";
      author = "Mitsutoshi Aoe";
      homepage = "https://github.com/maoe/tkyprof";
      url = "";
      synopsis = "A visualizer for GHC Profiling Reports";
      description = "A visualizer for GHC Profiling Reports";
      buildType = "Simple";
    };
    components = {
      "library" = {};
      exes = {
        "tkyprof" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.attoparsec-enumerator)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.enumerator)
            (hsPkgs.hamlet)
            (hsPkgs.rosezipper)
            (hsPkgs.stm)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.warp)
            (hsPkgs.web-routes)
            (hsPkgs.yesod-core)
            (hsPkgs.yesod-form)
            (hsPkgs.yesod-json)
            (hsPkgs.yesod-static)
          ];
        };
        "prof2json" = {
          depends = [
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.blaze-builder)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }