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
        name = "urlpath";
        version = "9.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2018 Athan Clark";
      maintainer = "athan.clark@localcooking.com";
      author = "Athan Clark";
      homepage = "https://github.com/athanclark/urlpath#readme";
      url = "";
      synopsis = "Painfully simple URL deployment.";
      description = "Please see the README on Github at <https://github.com/githubuser/urlpath#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.attoparsec-uri)
          (hsPkgs.base)
          (hsPkgs.exceptions)
          (hsPkgs.mmorph)
          (hsPkgs.monad-control)
          (hsPkgs.monad-control-aligned)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.path)
          (hsPkgs.path-extra)
          (hsPkgs.resourcet)
          (hsPkgs.split)
          (hsPkgs.strict)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.vector)
        ];
      };
    };
  }