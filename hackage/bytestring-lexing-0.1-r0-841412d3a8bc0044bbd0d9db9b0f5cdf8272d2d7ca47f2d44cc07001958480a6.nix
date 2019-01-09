{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "bytestring-lexing"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Don Stewart 2008";
      maintainer = "dons@galois.com";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/bytestring-double";
      url = "";
      synopsis = "Parse literals efficiently from bytestrings";
      description = "Parse literals efficiently from bytestrings";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.small_base
          then [ (hsPkgs.base) (hsPkgs.bytestring) (hsPkgs.array) ]
          else [ (hsPkgs.base) ];
        };
      };
    }