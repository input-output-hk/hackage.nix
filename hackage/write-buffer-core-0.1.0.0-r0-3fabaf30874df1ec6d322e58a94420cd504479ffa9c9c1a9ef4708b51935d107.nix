{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "write-buffer-core"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Matt Parsons";
      maintainer = "parsonsmatt@gmail.com";
      author = "Matt Parsons";
      homepage = "https://github.com/parsonsmatt/write-buffer#readme";
      url = "";
      synopsis = "Buffer your writes, transparently";
      description = "Core for the write-buffer set of libraries";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.exceptions)
          (hsPkgs.stm)
          (hsPkgs.stm-chans)
          (hsPkgs.bytestring)
          (hsPkgs.clock)
          (hsPkgs.dlist)
          (hsPkgs.lifted-async)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
          ];
        };
      };
    }