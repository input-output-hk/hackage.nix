{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "content-store";
        version = "0.2.1";
      };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "clumens@redhat.com";
      author = "Chris Lumens";
      homepage = "https://github.com/weldr/content-store";
      url = "";
      synopsis = "Store and retrieve data from an on-disk store";
      description = "This module provides a way to store and retrieve arbitrary\ndata from an on-disk store, similar to how a source\ncontrol system works but without the assumptions of such\na system.";
      buildType = "Simple";
    };
    components = {
      "content-store" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cond)
          (hsPkgs.conduit)
          (hsPkgs.conduit-combinators)
          (hsPkgs.conduit-extra)
          (hsPkgs.cryptonite)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.htoml)
          (hsPkgs.lzma-conduit)
          (hsPkgs.memory)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.resourcet)
          (hsPkgs.temporary)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.unix)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-combinators)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.memory)
            (hsPkgs.mtl)
            (hsPkgs.resourcet)
            (hsPkgs.temporary)
            (hsPkgs.content-store)
          ];
        };
      };
    };
  }