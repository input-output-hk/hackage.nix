{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "linear-socket"; version = "0.3.3.3"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2018 Allele Dev";
      maintainer = "allele.dev@gmail.com";
      author = "Allele Dev";
      homepage = "";
      url = "";
      synopsis = "Typed sockets";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.bytestring) (hsPkgs.network) ];
        };
      tests = {
        "linear-socket-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.linear-socket)
            (hsPkgs.network)
            (hsPkgs.tasty-hspec)
            ];
          };
        };
      };
    }