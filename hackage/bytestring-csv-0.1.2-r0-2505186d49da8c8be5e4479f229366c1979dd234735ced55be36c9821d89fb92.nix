{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "bytestring-csv";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Don Stewart 2008";
      maintainer = "dons@galois.com";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/bytestring-csv";
      url = "";
      synopsis = "Parse CSV formatted data efficiently";
      description = "Parse CSV formatted data efficiently";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.dlist)
        ] ++ (if flags.small_base
          then [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.array)
          ]
          else [ (hsPkgs.base) ]);
      };
    };
  }