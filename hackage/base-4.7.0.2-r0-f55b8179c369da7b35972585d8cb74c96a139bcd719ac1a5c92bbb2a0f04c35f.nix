{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      integer-simple = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "base";
        version = "4.7.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "libraries@haskell.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Basic libraries";
      description = "This package contains the \"Prelude\" and its support libraries,\nand a large collection of useful libraries ranging from data\nstructures to parsing combinators and debugging utilities.";
      buildType = "Configure";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.rts)
          (hsPkgs.ghc-prim)
        ] ++ (if flags.integer-simple
          then [ (hsPkgs.integer-simple) ]
          else [ (hsPkgs.integer-gmp) ]);
        libs = pkgs.lib.optionals (system.isWindows) [
          (pkgs."wsock32")
          (pkgs."user32")
          (pkgs."shell32")
        ];
      };
    };
  }