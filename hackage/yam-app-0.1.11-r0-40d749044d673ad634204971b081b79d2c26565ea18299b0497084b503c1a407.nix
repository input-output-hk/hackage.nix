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
        name = "yam-app";
        version = "0.1.11";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Daniel YU";
      maintainer = "Daniel YU <leptonyu@gmail.com>";
      author = "Daniel YU";
      homepage = "https://github.com/leptonyu/yam/tree/master/yam-app#readme";
      url = "";
      synopsis = "Yam App";
      description = "Base Module for Yam";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.monad-control)
          (hsPkgs.transformers)
          (hsPkgs.aeson)
          (hsPkgs.yaml)
          (hsPkgs.text)
          (hsPkgs.string-conversions)
          (hsPkgs.exceptions)
          (hsPkgs.time)
          (hsPkgs.random)
          (hsPkgs.data-default)
          (hsPkgs.unordered-containers)
          (hsPkgs.containers)
          (hsPkgs.ctrie)
          (hsPkgs.directory)
          (hsPkgs.fast-logger)
          (hsPkgs.monad-logger)
          (hsPkgs.wai-logger)
          (hsPkgs.persistent)
          (hsPkgs.resource-pool)
          (hsPkgs.persistent-sqlite)
          (hsPkgs.conduit)
          (hsPkgs.resourcet)
          (hsPkgs.mtl)
        ];
      };
    };
  }