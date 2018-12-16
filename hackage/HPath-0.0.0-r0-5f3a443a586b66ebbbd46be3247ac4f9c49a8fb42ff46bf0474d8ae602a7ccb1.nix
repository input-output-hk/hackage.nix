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
      specVersion = "1.6";
      identifier = {
        name = "HPath";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "HPath@solidsnack.be";
      author = "Jason Dusek";
      homepage = "http://github.com/solidsnack/HPath";
      url = "";
      synopsis = "Extract Haskell declarations by name.";
      description = "Extract the source code for Haskell declarations by name, for use in\ndocumentation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.utf8-string)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.Cabal)
        ];
      };
      exes = {
        "hpath" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.utf8-string)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.Cabal)
          ];
        };
      };
    };
  }