{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "kurita"; version = "0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2019 davean; additionally twimoji by Twitter, Inc and other contributors is licensed under CC-BY 4.0";
      maintainer = "oss@xkcd.com";
      author = "davean";
      homepage = "https://oss.xkcd.com/";
      url = "";
      synopsis = "Find the alpha emoji";
      description = "A system for pitting each against the others and finding the greatest.\n\nFor an example, see <https://xkcd.com/2131/ Emojidome>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.approximate)
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.atomic-write)
          (hsPkgs.broadcast-chan)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.delay)
          (hsPkgs.double-metaphone)
          (hsPkgs.hashable)
          (hsPkgs.http-types)
          (hsPkgs.hyperloglog)
          (hsPkgs.lens)
          (hsPkgs.linklater)
          (hsPkgs.megaparsec)
          (hsPkgs.monad-loops)
          (hsPkgs.mtl)
          (hsPkgs.parser-combinators)
          (hsPkgs.random)
          (hsPkgs.reflection)
          (hsPkgs.sorted-list)
          (hsPkgs.split)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.uri-bytestring)
          (hsPkgs.vector)
          (hsPkgs.wai)
          (hsPkgs.wai-websockets)
          (hsPkgs.websockets)
          (hsPkgs.wreq)
          (hsPkgs.wuss)
          ];
        };
      exes = {
        "kurita" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bits)
            (hsPkgs.bytes)
            (hsPkgs.delay)
            (hsPkgs.kurita)
            (hsPkgs.siphash)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.warp)
            ];
          };
        "kurita-central" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.delay)
            (hsPkgs.kurita)
            (hsPkgs.linklater)
            (hsPkgs.siphash)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.warp)
            ];
          };
        "kurita-relay" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bits)
            (hsPkgs.bytes)
            (hsPkgs.kurita)
            (hsPkgs.siphash)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.warp)
            ];
          };
        "kurita-client" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.kurita)
            (hsPkgs.monad-loops)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.websockets)
            ];
          };
        };
      tests = { "kurita-test" = { depends = [ (hsPkgs.base) ]; }; };
      };
    }