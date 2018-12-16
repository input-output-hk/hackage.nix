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
        name = "bzlib-conduit";
        version = "0.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2012, Hideyuki Tanaka";
      maintainer = "Michael Snoyman";
      author = "Hideyuki Tanaka";
      homepage = "https://github.com/snoyberg/bzlib-conduit#readme";
      url = "";
      synopsis = "Streaming compression/decompression via conduits.";
      description = "Please see the README and docs at <https://www.stackage.org/package/bzlib-conduit>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bindings-DSL)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.data-default)
          (hsPkgs.mtl)
          (hsPkgs.resourcet)
        ];
        libs = pkgs.lib.optional (!system.isWindows) (pkgs."bz2");
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bindings-DSL)
            (hsPkgs.bytestring)
            (hsPkgs.bzlib-conduit)
            (hsPkgs.conduit)
            (hsPkgs.data-default)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
            (hsPkgs.random)
            (hsPkgs.resourcet)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bindings-DSL)
            (hsPkgs.bytestring)
            (hsPkgs.bzlib-conduit)
            (hsPkgs.conduit)
            (hsPkgs.data-default)
            (hsPkgs.mtl)
            (hsPkgs.resourcet)
          ];
        };
      };
    };
  }