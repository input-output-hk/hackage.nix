{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "lua-bc"; version = "0.1"; };
      license = "MIT";
      copyright = "2015 Galois, Inc.";
      maintainer = "emertens@galois.com";
      author = "Eric Mertens";
      homepage = "https://github.com/GaloisInc/lua-bc";
      url = "";
      synopsis = "Lua bytecode parser";
      description = "Lua bytecode parser";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.containers)
          (hsPkgs.pretty)
          ];
        };
      };
    }